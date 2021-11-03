def remove_duplicates(nums)
    nums.each_with_index do |i, index|
        if i == i[index + 1]
            p true
        end
    end 
end

remove_duplicates([1,1,2])