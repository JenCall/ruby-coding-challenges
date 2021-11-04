
# First solution - Brute Froce - O(n^2) time / O(1) spaec

def two_sum(nums, target)
    nums.each { |i| nums.each { |j| return [i, j] if (i + j) == target } }
end

p two_sum([2,3,5,7], 9)

# Optimized solution - O(n) time / O(n) spaec

def two_sum(nums, target)
    values_and_indices = {}
    
    nums.each_with_index do |val, index|
        required_val = target - val
        if values_and_indices[required_val]
            return [index, values_and_indices[required_val]]
        end
        
        values_and_indices[val] = index
    end
end