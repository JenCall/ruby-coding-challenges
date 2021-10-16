def longest(a1, a2)
  # your code
  a1 = a1.split("")
  a2 = a2.split("")
  new_word = ""
  a1.each do |i|
    if a1.include?(i)
      next
    else
      new_word << i
    end
  end
#   a2.each do |j|
#     unless a2.include?(j)
#       new_word << j
#     end
#   end
#   return new_word
end

p longest("hello","hola")