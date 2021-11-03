
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

# def remove_duplicates(nums)
#     new = nums.uniq!
#     new.length
# end

p remove_duplicates([1,2,2,2,3,5,5,5])

# Complexity analysis

# Time complextiy: O(n). Assume that n is the length of array. 
# Each of i and j traverses at most n steps.

# Space complexity : O(1).