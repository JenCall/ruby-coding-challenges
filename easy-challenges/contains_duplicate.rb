# Given an integer array nums, return true if any value appears at least twice 
# in the array, and return false if every element is distinct.
# LeetCode

#first solution
def contains_duplicate(nums)
    h = Hash.new(0)                 # hash with value of 0 as integer
    nums.each do |n|
        h[n] += 1                   # adding 1 for each key
        return true if h[n] > 1     # if a value sums more than 1 then true
    end
    false                           # if keys have 1 as value it means it appears only once
end

p contains_duplicate([1,2,3,4])