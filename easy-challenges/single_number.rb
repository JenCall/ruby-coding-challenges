# Given a non-empty array of integers nums, every element appears twice 
# except for one. Find that single one.

def single_number(nums)
    2 * nums.uniq.sum - nums.sum
end

p single_number([1,1,2,2,3])