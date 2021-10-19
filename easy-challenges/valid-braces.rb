# Valid Braces

# Write a function that takes a string of braces, and determines if the order of the braces 
# is valid. It should return true if the string is valid, and false if it's invalid.

# This Kata is similar to the Valid Parentheses Kata, but introduces new characters: 
# brackets [], and curly braces {}. Thanks to @arnedag for the idea!

# All input strings will be nonempty, and will only consist of parentheses, brackets and 
# curly braces: ()[]{}.

def validBraces(braces)
    opens = ["(", "[","{"]
    closes = [")", "]","}"]
    hash_of_symbols = { "(" => 1, ")" => 2, "[" => 3, "]" => 4,  "{" => 5, "}" => 6 }
    braces = braces.split("")
    if braces.length % 2 == 0
        braces.each do |i| 
            if hash_of_symbols.include?(i)
                values << hash_of_symbols[i]
            end
        end
        p values
    else
        false
    end
end

validBraces("([)")