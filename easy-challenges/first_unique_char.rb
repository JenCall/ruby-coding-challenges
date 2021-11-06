# Given a string s, find the first non-repeating character in it and 
# return its index. If it does not exist, return -1. --from LeetCode--

# First Solution
def first_uniq_char(s)
    hash = {}
    s.each_char.with_index do |char, index|
        if hash.key?(char)
            hash[char] = false 
        else
            hash[char] = index 
        end
    end
    hash.each { |char,index| return hash[char] if hash[char] }
    -1
end