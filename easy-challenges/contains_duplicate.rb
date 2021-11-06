# Given an integer array nums, return true if any value appears at least twice 
# in the array, and return false if every element is distinct.
# LeetCode

#first solution
def contains_duplicate(nums)
    h = Hash.new(0)
    nums.each do |n|
        h[n] += 1
        return true if h[n] > 1
    end
    false
end

p contains_duplicate([1,2,3,4])