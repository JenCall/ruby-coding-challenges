# Letter Changes

# Have the function LetterChanges(str) take the str parameter being passed
# and modify it using the following algorithm. Replace every letter in the 
# string with the letter following it in the alphabet (ie. c becomes d, z 
# becomes a). Then capitalize every vowel in this new string (a, e, i, o, u) 
# and finally return this modified string.

def LetterChanges(str)
    alpha = ("a".."z").to_a
    array_letters = str.downcase.split("")
    new_array = array_letters.map do |letter|
        if letter =~ /[a-z]/
            index = alpha.index(letter)
            letter = (letter == "z") ? "a" : alpha[index + 1]
            letter = letter.upcase if letter =~ /[aeiou]/
            letter
        else
            letter
        end
    end.join
end

puts LetterChanges("Hello");

# second solution

def LetterChanges(str)

    # code goes here
    alphabets = ("a".."z").to_a
    vowels = ["a","e","i","o","u"]
    new_str = ""
    mod_str = ""
    for i in 0..str.length-1
     if alphabets.include?(str[i])
          new_str << alphabets[alphabets.index(str[i]) -(alphabets.length-1)]
     else
         new_str << str[i]
     end
    end
    
    for i in 0..new_str.length-1
      if vowels.include?(new_str[i])
          mod_str << new_str[i].upcase
      else
          mod_str << new_str[i]
      end
    end
    return mod_str 
           
  end