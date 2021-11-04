# A phrase is a palindrome if, after converting all uppercase letters into 
# lowercase letters and removing all non-alphanumeric characters, it reads 
# the same forward and backward. Alphanumeric characters include letters 
# and numbers.

def is_palindrome(s)
    s = s.split(' ').join('').downcase.gsub(/[^0-9a-z]/i, '')
    return s == s.reverse
end