# Given two strings s and t, return true if s is a subsequence of t, or false otherwise.
# Leetcode
# A subsequence of a string is a new string that is formed from the original string by 
# deleting some (can be none) of the characters without disturbing the relative positions 
# of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).

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

# Runtime: 52 ms, faster than 89.36% of Ruby online submissions for Is Subsequence.
# Memory Usage: 210.1 MB, less than 36.17% of Ruby online submissions for Is Subsequence.