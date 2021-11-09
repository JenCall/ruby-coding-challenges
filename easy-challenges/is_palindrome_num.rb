# An integer is a palindrome when it reads the same backward as forward. For example, 
# 121 is palindrome while 123 is not.

def is_palindrome(x)
    x.to_s == x.to_s.reverse
end

p is_palindrome(-121)