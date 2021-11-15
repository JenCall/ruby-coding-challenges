# Is the power of three? --LeetCode--
# Given an integer n, return true if it is a power of three. Otherwise, return false.
# An integer n is a power of three, if there exists an integer x such that n == 3x.

# First solution
def is_power_of_three(n)
    return true if n == 3 || n == 1  # check first the n
    return false if n % 3 != 0 || n.zero? # check first the n

    is_power_of_three(n / 3) # now check the number divided per 3 will be true if 3 or 1 
end