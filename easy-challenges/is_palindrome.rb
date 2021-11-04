# def is_palindrome(string)
#     string.reverse == string ? true : false
# end

# p is_palindrome("hello")

def is_palindrome(string)
    j = string.length
    new_str = ""
    while j > 0
        new_str << string[j-1]
        j -=1
    end
    new_str == string ? true : false
end
p is_palindrome("racecar")