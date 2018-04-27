import pandas as pd

# Elastic predicates method (ESP)


# Get program inputs into dataframe
input_data_unformatted = pd.read_csv("programinputs.txt", header=None,
                                     delim_whitespace=True).transpose()
columns = []
for val in input_data_unformatted.iloc[0]:
    columns.append(val)
input_data = input_data_unformatted
input_data.columns = columns
input_data.drop([0], inplace=True)
input_data.reset_index(inplace=True)
# Get output (fault or no) into dataframe
output_data_unformatted = pd.read_csv("faults.txt", header=None,
                                      delim_whitespace=True).transpose()
output_data_unformatted.columns = ['output']
data = input_data.join(output_data_unformatted)

mean_dict = {}
std_dict = {}
for i, val in enumerate(data.mean()):
    index = data.mean().index[i]
    if index == "index" or index == "output":
        continue
    mean_dict[index] = val

for i, val in enumerate(data.std()):
    index = data.std().index[i]
    if index == "index" or index == "output":
        continue
    std_dict[index] = val

# Create an array for each predicate/ssa_variable combo
# Check predicate using ssa_variable mean and value at that run
predicate_dict = {}

# Predicates
# (mu_x - l*sigma_x) > x
# (mu_x - k*sigma_x) <= x < (mu_x - j*sigma_x)
#  mu_x = x
# (mu_x + j*sigma_x) <= x < (mu_x + k*sigma_x)
# (mu_x + l*sigma_x) > x
j = (0, 1, 2)
k = (1, 2, 3)
l = 3
for col_name in data.columns:
    if col_name == "index" or col_name == "output":
        continue
    mu_x = mean_dict[col_name]
    sigma_x = std_dict[col_name]
    # create key for col_name + predicate in predicate_dict
    predicate_dict["(mu_" + col_name + "-" + str(l) +
                   "*sigma_" + col_name + ")>" + col_name] = []
    predicate_dict["mu_" + col_name + "=" + col_name] = []
    predicate_dict["(mu_" + col_name + "+" + str(l) +
                   "*sigma_" + col_name + ")>" + col_name] = []
    for val in data[col_name]:
        if mu_x - l * sigma_x > val:
            predicate_dict["(mu_" + col_name + "-" + str(l) + "*sigma_" + col_name + ")>" +
                           col_name].append(1)
        else:
            predicate_dict["(mu_" + col_name + "-" + str(l) + "*sigma_" + col_name + ")>" +
                           col_name].append(0)

        if mu_x == val:
            predicate_dict["mu_" + col_name + "=" + col_name].append(1)
        else:
            predicate_dict["mu_" + col_name + "=" + col_name].append(0)

        if mu_x + l * sigma_x > val:
            predicate_dict["(mu_" + col_name + "+" + str(l) + "*sigma_" + col_name + ")>" +
                           col_name].append(1)
        else:
            predicate_dict["(mu_" + col_name + "+" + str(l) + "*sigma_" + col_name + ")>" +
                           col_name].append(0)
    for i in range(2):
        predicate_dict["(mu_" + col_name + "-" + str(k[i]) + "*sigma_" + col_name + ")<=" + col_name +
                       "<(mu_" + col_name + "-" + str(j[i]) + "*sigma_" + col_name + ")"] = []

        predicate_dict["(mu_" + col_name + "+" + str(j[i]) + "*sigma_" + col_name + ")<=" + col_name +
                       "<(mu_" + col_name + "+" + str(k[i]) + "*sigma_" + col_name + ")"] = []

        for val in data[col_name]:
            if mu_x - k[i] * sigma_x <= val and val < mu_x - j[i] * sigma_x:
                predicate_dict["(mu_" + col_name + "-" + str(k[i]) + "*sigma_" + col_name + ")<=" + col_name +
                               "<(mu_" + col_name + "-" + str(j[i]) + "*sigma_" + col_name + ")"].append(1)
            else:
                predicate_dict["(mu_" + col_name + "-" + str(k[i]) + "*sigma_" + col_name + ")<=" + col_name +
                               "<(mu_" + col_name + "-" + str(j[i]) + "*sigma_" + col_name + ")"].append(0)

            if mu_x + j[i] * sigma_x <= val and val < mu_x + k[i] * sigma_x:
                predicate_dict["(mu_" + col_name + "+" + str(j[i]) + "*sigma_" + col_name + ")<=" + col_name +
                               "<(mu_" + col_name + "+" + str(k[i]) + "*sigma_" + col_name + ")"].append(1)
            else:
                predicate_dict["(mu_" + col_name + "+" + str(j[i]) + "*sigma_" + col_name + ")<=" + col_name +
                               "<(mu_" + col_name + "+" + str(k[i]) + "*sigma_" + col_name + ")"].append(0)


success_count = len(data['output'][data['output'] == 1])
fail_count = len(data['output'][data['output'] == 0])

pred_importance_list = []
for pred_name in predicate_dict.keys():
    pred_true_and_success = 0
    pred_true_and_failure = 0
    for index, indicator in enumerate(predicate_dict[pred_name]):
        if indicator == 1 and data['output'].iloc[index] == 1:
            pred_true_and_success += 1
        elif indicator == 1 and data['output'].iloc[index] == 0:
            pred_true_and_failure += 1
    if(pred_true_and_failure + pred_true_and_success == 0):
        continue
    increase = pred_true_and_failure / \
        (pred_true_and_success + pred_true_and_failure)
    importance = 2 / ((1 / increase) + 1)
    pred_importance_list.append((pred_name, importance))

for tup in sorted(pred_importance_list, key=lambda tup: tup[1]):
    print("Predicate:", tup[0], ", Score:", tup[1])
