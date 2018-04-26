from phi import *
res_0 = None
res_2 = None
res_1 = None
res_3 = None
is_negative_0 = None
is_negative_1 = None
is_negative_2 = None
n_0 = None
n_1 = None
n_2 = None
n_4 = None
n_3 = None
n_5 = None
base_0 = None
digit_0 = None

import string


def int2base(n, base):
    n_0 = n
    base_0 = base
    res_0 = None
    res_2 = None
    res_1 = None
    res_3 = None
    is_negative_0 = None
    is_negative_1 = None
    is_negative_2 = None
    n_1 = None
    n_2 = None
    n_4 = None
    n_3 = None
    n_5 = None
    digit_0 = None

    """
        :type n: int
        :type base: int
        :rtype: str
    """
    is_negative_0 = False
    variables = dict(globals(), **locals())
    if n_0 == 0:
        return (variables, '0')
    elif n_0 < 0:
        is_negative_1 = True
        n_1 = n_0*-1
    phiPreds = [n_0 == 0, n_0 < 0]
    phiNames = [is_negative_0, is_negative_1, is_negative_0]
    is_negative_2 = phiIf(phiPreds, phiNames)
    phiPreds = [n_0 == 0, n_0 < 0]
    phiNames = [n_0, n_1, n_0]
    n_2 = phiIf(phiPreds, phiNames)
    digit_0 = string.digits+string.ascii_uppercase
    res_0 = ''
    phi0 = Phi()
    while phi0.phiLoopTest(n_2, n_3) > 0:
        phi0.set()
        res_2 = phi0.phiEntry(res_0, res_1)
        n_4 = phi0.phiEntry(n_2, n_3)

        res_1 = res_2+digit_0[n_4 % base_0]
        n_3 = n_4//base_0
    res_3 = phi0.phiExit(res_0, res_1)
    n_5 = phi0.phiExit(n_2, n_3)
    variables = dict(globals(), ** locals())
    if is_negative_2:
        return (variables, '-'+res_3[::-1])
    else:
        return (variables, res_3[::-1])


# generate python causal map
causal_map = dict(n_2=['n_0', 'n_1', 'n_0'], n_1=['n_0'], is_negative_1=[], n_4=['n_2', 'n_3'], res_3=['res_0', 'res_1'], is_negative_2=['is_negative_0', 'is_negative_1', 'is_negative_0'], n_3=[
                  'n_4', 'base_0'], res_1=['res_2', 'digit_0', 'n_4', 'base_0'], is_negative_0=[], res_2=['res_0', 'res_1'], n_5=['n_2', 'n_3'], digit_0=[], res_0=[],)
