# Is the power of three? --LeetCode--
# Given an integer n, return true if it is a power of three. Otherwise, return false.
# An integer n is a power of three, if there exists an integer x such that n == 3x.

# First solution
def is_power_of_three(n)
    return true if n == 3 || n == 1  # check first the n
    return false if n % 3 != 0 || n.zero? # check first the n

    is_power_of_three(n / 3) # now check the number divided per 3 will be true if 3 or 1 
end

# Math solution 
def is_power_of_three(n)
    return false if n <= 0
    3 ** (Math.log(n+1) / Math.log(3)).to_int == n
end

# Easiest solution for me --while--
def is_power_of_three(n)
    return false if n == 0 
    return true if n == 1
    base = 3
    
    while base <= n
        return true if value == n 
        base = base * 3
    end
    false
end