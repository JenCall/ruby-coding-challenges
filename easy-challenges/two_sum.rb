
# First solution - Brute Froce - O(n^2) time / O(1) spaec

def two_sum(nums, target)
    nums.each { |i| nums.each { |j| return [i, j] if (i + j) == target } }
end

p two_sum([2,3,5,7], 9)

