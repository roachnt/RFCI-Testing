from lcm_ssa_buggy import lcm_buggy
from lcm import lcm
from numpy.random import randint
from numbers import Number

nsamples = 1000

a = randint(1, 1000, nsamples)
b = randint(1, 1000, nsamples)


bug_results = []
program_vars = {}


for i in range(nsamples):
    variables = lcm_buggy(a[i], b[i])[0]
    for variable in variables.keys():
        if variable not in program_vars.keys() and isinstance(variables[variable], Number):
            program_vars[variable] = [variables[variable]]
        elif isinstance(variables[variable], Number):
            program_vars[variable].append(variables[variable])
    bug_results.append(0 if lcm(a[i], a[i]) == lcm_buggy(
        a[i], a[i])[1] else 1)


with open("programinputs.txt", "w") as f:
    for variable in program_vars.keys():
        out_line = str(variable) + " " + " ".join(str(i)
                                                  for i in program_vars[variable])
        f.write(out_line)
        f.write('\n')

with open("faults.txt", "w") as f:
    f.write(" ".join(str(i) for i in bug_results))
