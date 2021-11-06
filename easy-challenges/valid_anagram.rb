# Given two strings s and t, return true if t is an anagram of s, 
# and false otherwise.  -->from LeetCode<--

def is_anagram(s, t)
    s.split("").sort == t.split("").sort
end

p is_anagram("hello", "hola")