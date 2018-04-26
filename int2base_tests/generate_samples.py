from int2base_ssa import int2base
from int2base_ssa_buggy import int2base_buggy
from numpy.random import randint
from numbers import Number
import numpy

n_samples = 1000

integers = randint(0, 100, n_samples)
bases = randint(2, 10, n_samples)

bug_results = []
program_vars = {}

for i in range(n_samples):
    variables = int2base_buggy(integers[i], bases[i])[0]
    for variable in variables.keys():
        if variable not in program_vars.keys() and isinstance(variables[variable], Number):
            program_vars[variable] = [variables[variable]]
        elif isinstance(variables[variable], Number):
            program_vars[variable].append(variables[variable])
    bug_results.append(0 if int2base(integers[i], bases[i])[1] == int2base_buggy(
        integers[i], bases[i])[1] else 1)
# for result in bug_results:
#    print(result)

with open("programinputs.txt", "w") as f:
    for variable in program_vars.keys():
        out_line = str(variable) + " " + " ".join(str(i)
                                                  for i in program_vars[variable])
        f.write(out_line)
        f.write('\n')

with open("faults.txt", "w") as f:
    f.write(" ".join(str(i) for i in bug_results))
