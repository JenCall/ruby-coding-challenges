# Given a signed 32-bit integer x, return x with its digits reversed. 
# If reversing x causes the value to go outside the signed 32-bit integer 
# range [-231, 231 - 1], then return 0.

# LeetCode

# First solution
def reverse(x)
    return 0 if (x.to_s.reverse.to_i) > (2**31)
    x < 0 ? (y = -1*(x.to_s.reverse.to_i)) : (y = x.to_s.reverse.to_i)
end

p reverse(87)