# Break camelCase

# Complete the solution so that the function will break up camel casing, using a space between words.
# Example
# "camelCasing"  =>  "camel Casing"
# "identifier"   =>  "identifier"
# ""             =>  ""

def solution(string)
    # complete the function
    new_string = []
    string.split("").each do |i| 
      if i == i.upcase
        new_string << " "
        new_string << i
      else
        new_string << i
      end
    end
    new_string.join
end

p solution("camelCase")