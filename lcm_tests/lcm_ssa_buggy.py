from phi import *
num_0 = None
num_1 = None
num_2 = None
num_4 = None
num_3 = None
num_5 = None
num_6 = None
lcm_0 = None
num1_0 = None
gcd_0 = None
rem_0 = None
rem_2 = None
rem_1 = None
rem_3 = None
den_0 = None
den_1 = None
den_2 = None
den_4 = None
den_3 = None
den_5 = None
den_6 = None
num2_0 = None

from random import random


def lcm_buggy(num1, num2):
    num1_0 = num1
    num2_0 = num2
    num_0 = None
    num_1 = None
    num_2 = None
    num_4 = None
    num_3 = None
    num_5 = None
    lcm_0 = None
    gcd_0 = None
    rem_0 = None
    rem_2 = None
    rem_1 = None
    rem_3 = None
    den_0 = None
    den_1 = None
    den_2 = None
    den_4 = None
    den_3 = None
    den_5 = None

    if (num1_0 > num2_0):
        num_0 = num1_0
        den_0 = num2_0
    else:
        num_1 = num2_0
        den_1 = num1_0
    phiPreds = [(num1_0 > num2_0)]
    phiNames = [num_0, num_1]
    num_2 = phiIf(phiPreds, phiNames)
    phiPreds = [(num1_0 > num2_0)]
    phiNames = [den_0, den_1]
    den_2 = phiIf(phiPreds, phiNames)
    rem_0 = buggy(num_2, den_2)
    phi0 = Phi()
    while (phi0.phiLoopTest(rem_0, rem_1) != 0):
        phi0.set()
        num_4 = phi0.phiEntry(num_2, num_3)
        rem_2 = phi0.phiEntry(rem_0, rem_1)
        den_4 = phi0.phiEntry(den_2, den_3)

        num_3 = den_4
        den_3 = rem_2
        rem_1 = num_3 % den_3
    num_5 = phi0.phiExit(num_2, num_3)
    rem_3 = phi0.phiExit(rem_0, rem_1)
    den_5 = phi0.phiExit(den_2, den_3)
    gcd_0 = den_5
    lcm_0 = int(int(num1_0 * num2_0) / int(gcd_0))
    variables = dict(globals(), **locals())
    return (variables, lcm_0)


def buggy(num, den):
    num_6 = num
    den_6 = den

    if random() > .5:
        return num_6 % den_6 + 1
    else:
        return num_6 % den_6


# generate python causal map
causal_map = dict(gcd_0=['den_5'], lcm_0=['num1_0', 'num2_0', 'gcd_0'], den_0=['num2_0'], den_1=['num1_0'], den_2=['den_0', 'den_1'], den_3=['rem_2'], den_4=['den_2', 'den_3'], num_0=['num1_0'], den_5=['den_2', 'den_3'], num_5=[
                  'num_2', 'num_3'], rem_3=['rem_0', 'rem_1'], rem_1=['num_3', 'den_3'], rem_2=['rem_0', 'rem_1'], num_1=['num2_0'], num_2=['num_0', 'num_1'], rem_0=['num_2', 'den_2'], num_3=['den_4'], num_4=['num_2', 'num_3'],)
