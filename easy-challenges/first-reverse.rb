# First Reverse

# Have the function FirstReverse(str) take the str parameter being passed and
# return the string in reversed order. For example: if the input string is "Hello
# World and Coders" then your program should return the string sredoC dna dlroW olleH. 

# first attempt
def FirstReverse(string)
    arrayOfStrings = []
    string = string.split("")
    n = string.length - 1
    string.each do |i|
        arrayOfStrings << string[n]
        n -= 1
    end
    arrayOfStrings.join()
end

puts FirstReverse("hello world");

# second solution
def FirstReverse2(str)
    return str.reverse
end
puts FirstReverse2("hello world")

# 3- solution
def FirstReverse3(str)
    str.chars.reverse.join
end
puts FirstReverse3("hello world")

def FirstReverse4(str)
    i = 0
    j = str.size - 1
  
    while i < j
     str[i], str[j] = str[j], str[i]
     i += 1
     j -= 1
    end
    return str
end
puts FirstReverse4("hello world")