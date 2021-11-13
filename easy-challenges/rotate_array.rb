# Intructions to ROTATE ARRAY from LeetCode
# Given an array, rotate the array to the right by k steps, where k is non-negative.
# Example 1:
# Input: nums = [1,2,3,4,5,6,7], k = 3
# Output: [5,6,7,1,2,3,4]
# Explanation:
# rotate 1 steps to the right: [7,1,2,3,4,5,6]
# rotate 2 steps to the right: [6,7,1,2,3,4,5]
# rotate 3 steps to the right: [5,6,7,1,2,3,4]

# First Solution - times
def rotate(nums, k)
    k.times do
    nums.unshift(nums[-1]).delete_at(-1)
   end 
   nums
end
p rotate([1,2,3,4], 4)

# Second Solution - while
def rotate(nums, k)
    i = 0
    while i < k do
    nums.unshift(nums[-1])
    nums.delete_at(-1)
    i +=1
   end 
   nums
end

#Optimized in Ruby - rotate
def rotate(nums, k)
    nums.rotate!(-k)
end

# Another Idea
def rotate(nums, k)
    k.times {|i| nums.unshift(nums.pop)}
end
