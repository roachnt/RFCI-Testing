import string


def int2base(n, base):
    """
        :type n: int
        :type base: int
        :rtype: str
    """
    is_negative = False
    if n == 0:
        return '0'
    elif n < 0:
        is_negative = True
        n *= -1
    digit = string.digits + string.ascii_uppercase
    res = ''
    while n > 0:
        res += digit[n % base]
        n //= base
    if is_negative:
        return '-' + res[::-1]
    else:
        return res[::-1]
