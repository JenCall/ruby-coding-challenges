# Is power of Two? --LeetCode--
# Given an integer n, return true if it is a power of two. Otherwise, return false.
# An integer n is a power of two, if there exists an integer x such that n == 2x.

# First Solution
def is_power_of_two(n)
    return false if n == 0
    return true if n == 1
    base = 2
    
    while base <= n
        return true if base == n
        base = base * 2
    end
    false
end