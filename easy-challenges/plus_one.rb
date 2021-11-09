# You are given a large integer represented as an integer array digits, where 
# each digits[i] is the ith digit of the integer. The digits are ordered from 
# most significant to least significant in left-to-right order. The large integer 
# does not contain any leading 0's. Increment the large integer by one and return 
# the resulting array of digits.
# 09/11/2021 - LeetCode

# First solution
def plus_one(digits)
   (digits.join.to_i + 1).to_s.split("").map(&:to_i)
end

p plus_one([1,2,3,4])