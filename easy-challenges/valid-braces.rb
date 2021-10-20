# Valid Braces

# Write a function that takes a string of braces, and determines if the order of the braces 
# is valid. It should return true if the string is valid, and false if it's invalid.

# This Kata is similar to the Valid Parentheses Kata, but introduces new characters: 
# brackets [], and curly braces {}. Thanks to @arnedag for the idea!

# All input strings will be nonempty, and will only consist of parentheses, brackets and 
# curly braces: ()[]{}.

# first try
def validBraces(braces)
    hash_of_symbols = { "(" => 2, ")" => 2, "[" => 3, "]" => 3,  "{" => 4, "}" => 4 }
    braces = braces.split("")
    values = []
    if braces.length % 2 == 0
        braces.each { |i| values << hash_of_symbols[i] if hash_of_symbols.include?(i) }
        if values.size == 2 && values[0] == values[1]
            true
        elsif values[0] == values[1] && values[2] == values[3]
            true
        else
            array_1 = values.each_slice( (values.size/2.0).round ).to_a[0]
            array_2 = values.each_slice( (values.size/2.0).round ).to_a[1].reverse()
            array_1 == array_2 ? true : false
        end
    else
        false
    end
end
validBraces("[]{}()")

# clever solution
def validBraces1 braces, *a
    braces_set = { "(" => ")", "{" => "}", "[" => "]" }
    # p s.class -> is a string
    # p a.class -> is an array - seems to be converted at *a
    braces.split("").each do |brace|
        if braces_set[brace]
            a << brace
            p a
        else
            p a.pop
            # braces_set[a.pop]
            return false if braces_set[a.pop] != brace
        end
    end
    p a
    a.empty?
end

p validBraces1("{()}")

# shorter solution
def validBraces2(braces)
    while braces.gsub!(/\{\}|\[\]|\(\)/, ''); end
    braces.empty?
end
validBraces2("[]{}()")