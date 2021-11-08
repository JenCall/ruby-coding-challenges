# Given two strings s and t, return true if s is a subsequence of t, or false otherwise.
# Leetcode

def is_subsequence(s, t)
    t_index = 0
    s_index = 0
    
    while t_index < t.length && s_index < s.length
        s_index += 1 if t[t_index] == s[s_index]
        t_index += 1
    end
    s_index == s.length
end

p is_subsequence("abc","anvbfd")