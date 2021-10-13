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
    puts arrayOfStrings.join()
end

FirstReverse("hello world");