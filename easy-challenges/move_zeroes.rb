# Move the Zeros from -> LeetCode
# Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
# Note that you must do this in-place without making a copy of the array.

# First solution
def move_zeroes(nums)
    i = 1
    nums.each do |n|
        if n == 0
            nums.delete(n)
            i += 1
        end
    end
    i.times do
        nums << 0   
    end
    nums
end

# Second solution
def move_zeroes(nums)
    total = nums.count(0)
    nums.delete(0)
    total.times do
      nums << 0
    end
    nums
  end

p move_zeroes([0,1,0,2,3,5])