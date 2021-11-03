def remove_duplicates(nums)
    return 0 if nums.empty?
    index = 0
    j = 1
    
    while j < nums.length        
        nums[index] == nums[j] ? nums[j] = nil : index = j
        j += 1
    end
    
   p nums.compact!
    nums.length
end

# def remove_duplicates(nums)
#     new = nums.uniq!
#     new.length
# end

p remove_duplicates([1,2,2,2,3,5,5,5])