# An integer is a palindrome when it reads the same backward as forward. For example, 
# 121 is palindrome while 123 is not.

# First solution
# def is_palindrome(x)
#     x.to_s == x.to_s.reverse
# end

# second solution
def is_palindrome(x)
    rev = 0
    d = 0
    n = x
    while(n > 0)
        d = n % 10
        rev = rev * 10 + d
        n= n / 10
    end
    rev == x ? true : false
end

p is_palindrome(-121)