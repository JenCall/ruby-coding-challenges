# Two to one

# Take 2 strings s1 and s2 including only letters from ato z. 
# Return a new sorted string, the longest possible, containing 
# distinct letters - each taken only once - coming from s1 or s2.

# my solution

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

# other solutions
def longest(a1, a2)
    a = a1 + a2
    a.split('').uniq.sort.join
end

def longest(a1, a2)
    (a1.chars | a2.chars).sort.join
end

def longest(a1, a2)
    (a1+a2).chars.sort.uniq.join
end

# methods
