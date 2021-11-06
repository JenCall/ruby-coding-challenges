# Given an integer array nums sorted in non-decreasing order, remove the 
# duplicates in-place such that each unique element appears only once. 
# The relative order of the elements should be kept the same.

# LeetCode

# First solution
def remove_duplicates(nums)
    return 0 if nums.empty?
    index = 0
    j = 1
    while j < nums.length        
        nums[index] == nums[j] ? nums[j] = nil : index = j
        j += 1
    end
    nums.compact!
    nums.length
end
p remove_duplicates([1,2,2,2,3,5,5,5])

# def remove_duplicates(nums)
#     new = nums.uniq!
#     new.length
# end

# Complexity analysis
# Time complextiy: O(n). Assume that n is the length of array. 
# Each of i and j traverses at most n steps.
# Space complexity : O(1).