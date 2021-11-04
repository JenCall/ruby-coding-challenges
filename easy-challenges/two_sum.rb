
# First solution - Bring  values - Brute Froce - O(n^2) time / O(1) spaec

def two_sum(nums, target)
    nums.each { |i| nums.each { |j| return [i, j] if (i + j) == target } }
end

# Optimized solution - O(n) time / O(n) spaec
def two_sum(nums, target)
    hash_value_index = {}
    
    nums.each_with_index do |value, index|
        searched_value = target - value
        if hash_value_index[searched_value]
            return [index, hash_value_index[searched_value]]
        end
        
        hash_value_index[value] = index
    end
end

# Bringing the indexes
def two_sum(nums, target)
    for i in (0...nums.length) do
        for j in (i + 1...nums.length) do
            return [i, j] if (nums[i] + nums[j]) == target
        end
    end
end

p two_sum([2,3,5,7], 9)