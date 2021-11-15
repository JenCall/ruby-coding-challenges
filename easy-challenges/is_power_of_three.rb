# Is the power of three? --LeetCode--
# Given an integer n, return true if it is a power of three. Otherwise, return false.
# An integer n is a power of three, if there exists an integer x such that n == 3x.

def is_power_of_three(n)
    return true if n == 3 || n == 1
    return false if n % 3 != 0 || n.zero?

    is_power_of_three(n / 3)
end