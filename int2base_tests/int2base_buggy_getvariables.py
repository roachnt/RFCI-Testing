import string
from random import random


def int2base_buggy(n, base):
    insert_bug = random() > .5
    """
        :type n: int
        :type base: int
        :rtype: str
    """
    is_negative = False
    variables = dict(globals(), ** locals())
    if n == 0:
        return '0'
    elif n < 0:
        is_negative = True
        n *= -1
    digit = string.digits + string.ascii_uppercase
    res = ''
    while n > 0:
        res += digit[n % base]
        n = buggy(insert_bug, n, base)
        variables = dict(globals(), ** locals())
    if is_negative:
        return (variables, '-' + res[::-1])
    else:
        return (variables, res[::-1])


def buggy(insert_bug, n, base):
    if insert_bug:
        n //= base + 1
    else:
        n //= base
    return n
