
# Convert string to camel case

# Complete the method/function so that it converts dash/underscore delimited words 
# into camel casing. The first word within the output should be capitalized only if 
# the original word was capitalized (known as Upper Camel Case, also often referred 
# to as Pascal case).

def to_camel_case(str)
    array_of_letters = str.split("")
    if array_of_letters.include?("_")
        string = str.split("_")  
    else array_of_letters.include?("-") 
        string = str.split("-")
    end
    n = 0
    word = ""

    string.each { |i| n == 0 ? word << i : word << i.capitalize
        n += 1 
    }
    word
end

p to_camel_case("the-stealth-warrior")