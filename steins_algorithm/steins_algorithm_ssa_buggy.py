from phi import *
a_0 = None
a_2 = None
a_1 = None
a_3 = None
a_5 = None
a_4 = None
a_6 = None
a_9 = None
a_7 = None
a_8 = None
a_10 = None
b_0 = None
b_2 = None
b_1 = None
b_3 = None
b_10 = None
b_5 = None
b_4 = None
b_6 = None
b_7 = None
b_8 = None
b_9 = None
b_11 = None
temp_2 = None
temp_0 = None
temp_1 = None
temp_3 = None
insert_bug_0 = None
k_0 = None
k_2 = None
k_1 = None
k_3 = None
k_4 = None
k_5 = None
k_6 = None
k_7 = None

from random import random


def gcd_buggy(a, b):
    a_0 = a
    b_0 = b
    a_2 = None
    a_1 = None
    a_3 = None
    a_5 = None
    a_4 = None
    a_6 = None
    a_9 = None
    a_7 = None
    a_8 = None
    a_10 = None
    b_2 = None
    b_1 = None
    b_3 = None
    b_10 = None
    b_5 = None
    b_4 = None
    b_6 = None
    b_7 = None
    b_8 = None
    b_9 = None
    b_11 = None
    temp_2 = None
    temp_0 = None
    temp_1 = None
    temp_3 = None
    k_0 = None
    k_2 = None
    k_1 = None
    k_3 = None

    variables = dict(globals(), **locals())
    if (a_0 == 0):
        return (variables, b_0)
    if (b_0 == 0):
        return (variables, a_0)
    k_0 = 0
    phi0 = Phi()
    while (((phi0.phiLoopTest(a_0, a_1) | phi0.phiLoopTest(b_0, b_1)) & 1) == 0):
        phi0.set()
        a_2 = phi0.phiEntry(a_0, a_1)
        b_2 = phi0.phiEntry(b_0, b_1)
        k_2 = phi0.phiEntry(k_0, k_1)

        a_1 = a_2 >> 1
        b_1 = b_2 >> 1
        k_1 = buggy(k_2)
    a_3 = phi0.phiExit(a_0, a_1)
    b_3 = phi0.phiExit(b_0, b_1)
    k_3 = phi0.phiExit(k_0, k_1)
    phi0 = Phi()
    while ((phi0.phiLoopTest(a_3, a_4) & 1) == 0):
        phi0.set()
        a_5 = phi0.phiEntry(a_3, a_4)

        a_4 = a_5 >> 1
    a_6 = phi0.phiExit(a_3, a_4)
    phi0 = Phi()
    while (phi0.phiLoopTest(b_3, b_9) != 0):
        phi0.set()
        a_9 = phi0.phiEntry(a_6, a_8)
        b_10 = phi0.phiEntry(b_3, b_9)
        temp_2 = phi0.phiEntry(None, temp_1)

        phi1 = Phi()
        while ((phi1.phiLoopTest(b_3, b_4) & 1) == 0):
            phi1.set()
            b_5 = phi1.phiEntry(b_10, b_4)

            b_4 = b_5 >> 1
        b_6 = phi1.phiExit(b_10, b_4)
        if (a_9 > b_6):
            temp_0 = a_9
            a_7 = b_6
            b_7 = temp_0
        phiPreds = [(a_9 > b_6)]
        phiNames = [a_7, a_9]
        a_8 = phiIf(phiPreds, phiNames)
        phiPreds = [(a_9 > b_6)]
        phiNames = [temp_0, temp_2]
        temp_1 = phiIf(phiPreds, phiNames)
        phiPreds = [(a_9 > b_6)]
        phiNames = [b_7, b_6]
        b_8 = phiIf(phiPreds, phiNames)
        b_9 = (b_8-a_8)
    a_10 = phi0.phiExit(a_6, a_8)
    b_11 = phi0.phiExit(b_3, b_9)
    temp_3 = phi0.phiExit(None, temp_1)
    variables = dict(globals(), **locals())
    return (variables, (a_10 << k_3))


def buggy(k):
    k_4 = k
    insert_bug_0 = None
    k_5 = None
    k_6 = None
    k_7 = None

    insert_bug_0 = random() > .5
    if insert_bug_0:
        k_5 = k_4+2
    else:
        k_6 = k_4+1
    phiPreds = [insert_bug_0]
    phiNames = [k_5, k_6]
    k_7 = phiIf(phiPreds, phiNames)
    return k_7
