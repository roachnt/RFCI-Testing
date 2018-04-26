import coverage
from int2base_buggy import int2base_buggy
from int2base import int2base
import functools
import math

with open("programinputs.txt") as f:
    lines = f.readlines()

for line in lines:
    if line.split(" ")[0] == "n":
        n_line = line.split(" ")[1:]
    if line.split(" ")[0] == "base":
        base_line = line.split(" ")[1:]

n_list = [int(i) for i in n_line]
base_list = [int(i) for i in base_line]

coverage_dict = {i: [0, 0] for i in range(1, 59)}
tarantula_faults = []
for i in range(1000):
    cov = coverage.Coverage()
    cov.start()
    val = int2base_buggy(n_list[i], base_list[i])
    if val == int2base(n_list[i], base_list[i]):
        tarantula_faults.append(0)
    else:
        tarantula_faults.append(1)
    cov.stop()
    cov.save()
    for line_number in cov.get_data().lines(
            '/Users/nicklausroach/Classes/EECS493/RFCI_Testing/int2base_tests/int2base_buggy.py'):
        # If the case passed, increment the first value in the list
        # corresponding to the line number in coverage_dict
        if val == int2base(n_list[i], base_list[i]):
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
line_hue_dict = {}
for line_number in coverage_dict.keys():
    passed = coverage_dict[line_number][0]
    failed = coverage_dict[line_number][1]
    if(passed == 0 and failed == 0):
        hue = "NONE"
    else:
        hue = (passed/total_passed) / \
            ((passed / total_passed) + (failed / total_failed))
        if (line_number < 27):
            line_hue_dict[line_number] = hue

print(line_hue_dict)
