from phi import *
i_0 = None
i_2 = None
i_1 = None
i_3 = None
i_4 = None
k_0 = None
k_2 = None
k_1 = None
k_3 = None
k_7 = None
k_5 = None
k_4 = None
k_6 = None
k_8 = None
n_0 = None
n_2 = None
n_1 = None
n_3 = None
n_7 = None
n_5 = None
n_4 = None
n_6 = None
n_8 = None
n_9 = None


import math
from random import random


def kPrimeFactor_buggy(n, k):
    n_0 = n
    k_0 = k
    i_0 = None
    i_2 = None
    i_1 = None
    i_3 = None
    k_2 = None
    k_1 = None
    k_3 = None
    k_7 = None
    k_5 = None
    k_4 = None
    k_6 = None
    k_8 = None
    n_2 = None
    n_1 = None
    n_3 = None
    n_7 = None
    n_5 = None
    n_4 = None
    n_6 = None
    n_8 = None

    phi0 = Phi()
    while (phi0.phiLoopTest(n_0, n_1) % 2 == 0):
        phi0.set()
        k_2 = phi0.phiEntry(k_0, k_1)
        n_2 = phi0.phiEntry(n_0, n_1)

        k_1 = k_2-1
        n_1 = n_2 / 2
        variables = dict(globals(), **locals())
        if (k_1 == 0):
            return (variables, 2)
    k_3 = phi0.phiExit(k_0, k_1)
    n_3 = phi0.phiExit(n_0, n_1)
    i_0 = 3
    phi0 = Phi()
    while phi0.phiLoopTest(i_0, i_1) <= math.sqrt(phi0.phiLoopTest(n_3, n_6)):
        phi0.set()
        i_2 = phi0.phiEntry(i_0, i_1)
        k_7 = phi0.phiEntry(k_3, k_6)
        n_7 = phi0.phiEntry(n_3, n_6)

        phi1 = Phi()
        while (phi1.phiLoopTest(n_3, n_4) % i_2 == 0):
            phi1.set()
            k_5 = phi1.phiEntry(k_7, k_4)
            n_5 = phi1.phiEntry(n_7, n_4)
            variables = dict(globals(), **locals())
            if (k_5 == 1):
                return (variables, i_2)
            k_4 = k_5-1
            n_4 = buggy(n_5, i_2)
        k_6 = phi1.phiExit(k_7, k_4)
        n_6 = phi1.phiExit(n_7, n_4)
        i_1 = i_2+2
    i_3 = phi0.phiExit(i_0, i_1)
    k_8 = phi0.phiExit(k_3, k_6)
    n_8 = phi0.phiExit(n_3, n_6)
    variables = dict(globals(), **locals())
    if (n_8 > 2 and k_8 == 1):
        return (variables, n_8)
    return (variables, -1)


def buggy(n, i):
    n_9 = n
    i_4 = i

    if random() > .2:
        return n_9 + 1/i_4
    else:
        return n_9/i_4


# generate python causal map
causal_map = dict(n_2=['n_0', 'n_1'], k_5=['k_7', 'k_4'], n_1=['n_2'], k_4=['k_5'], k_7=['k_3', 'k_6'], n_4=['n_5', 'i_2'], n_3=['n_0', 'n_1'], k_6=['k_7', 'k_4'], n_6=['n_7', 'n_4'], n_5=[
                  'n_7', 'n_4'], k_8=['k_3', 'k_6'], n_8=['n_3', 'n_6'], n_7=['n_3', 'n_6'], i_1=['i_2'], i_0=[], k_1=['k_2'], i_3=['i_0', 'i_1'], i_2=['i_0', 'i_1'], k_3=['k_0', 'k_1'], k_2=['k_0', 'k_1'],)
