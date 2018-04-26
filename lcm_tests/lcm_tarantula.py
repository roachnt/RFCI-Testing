import coverage
from lcm import lcm
from lcm_buggy import lcm_buggy
import functools
import math

with open("programinputs.txt") as f:
    lines = f.readlines()

for line in lines:
    if line.split(" ")[0] == "num1":
        a_line = line.split(" ")[1:]
    if line.split(" ")[0] == "num2":
        b_line = line.split(" ")[1:]

a_list = [int(i) for i in a_line]
b_list = [int(i) for i in b_line]

coverage_dict = {i: [0, 0] for i in range(1, 59)}
tarantula_faults = []
for i in range(1000):
    cov = coverage.Coverage()
    cov.start()
    val = lcm_buggy(a_list[i], b_list[i])
    if val == lcm(a_list[i], b_list[i]):
        tarantula_faults.append(0)
    else:
        tarantula_faults.append(1)
    cov.stop()
    cov.save()
    for line_number in cov.get_data().lines(
            '/Users/nicklausroach/Classes/EECS493/RFCI_Testing/lcm_tests/lcm_buggy.py'):
        # If the case passed, increment the first value in the list
        # corresponding to the line number in coverage_dict
        if val == lcm(a_list[i], b_list[i]):
            coverage_dict[line_number][0] += 1
        # If the case failed, increment the second value in the list
        # corresponding to the line number in coverage_dict
        else:
            coverage_dict[line_number][1] += 1
total_passed = 0
total_failed = 0
for i in tarantula_faults:
    if i == 1:
        total_passed += 1
    else:
        total_failed += 1
line_hue_list = []
for line_number in coverage_dict.keys():
    passed = coverage_dict[line_number][0]
    failed = coverage_dict[line_number][1]
    if(passed == 0 and failed == 0):
        hue = "NONE"
    else:
        hue = (passed/total_passed) / \
            ((passed / total_passed) + (failed / total_failed))
        if (line_number < 27):
            line_hue_list.append((line_number, hue))


for tup in sorted(line_hue_list, key=lambda tup: tup[1]):
    print("line", tup[0], ":",  tup[1])
print(len(line_hue_list))
