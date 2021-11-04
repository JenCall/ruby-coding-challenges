# Write a function that reverses a string. The input string is given as an array of characters s.

def reverse_string(string)
    j = string.length
    new_str = []
    while j > 0
        new_str << string[j-1]
        j -=1
    end
    new_str
end

# def reverse_string(s)
#     s.reverse!
# end

p reverse_string("hello")