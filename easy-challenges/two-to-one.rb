def longest(a1, a2)
  # your code
  a1 = a1.split("")
  a2 = a2.split("")
  new_word = ""
  
  a1.each { |i| 
    unless new_word.include?(i) 
        new_word << i 
    end }

  a2.each { |j|
    unless new_word.include?(j)
      new_word << j
    end }

  new_word.split("").sort.join
end

p longest("hello","hola")