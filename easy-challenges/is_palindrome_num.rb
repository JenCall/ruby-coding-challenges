# An integer is a palindrome when it reads the same backward as forward. For example, 
# 121 is palindrome while 123 is not.

def is_palindrome(x)
    nums= x.to_s.split("")
    j = 0
    i = nums.length - 1
    if nums[j] == nums[i]
        j += 1
        i -= 1
    else 
        false
    end
    
    
end

p is_palindrome(121)