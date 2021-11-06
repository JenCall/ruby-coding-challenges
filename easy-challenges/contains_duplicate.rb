def contains_duplicate(nums)
    h = Hash.new(0)
    nums.each do |n|
        h[n] += 1
        return true if h[n] > 1
    end
    false
end

p contains_duplicate([1,2,3,4])