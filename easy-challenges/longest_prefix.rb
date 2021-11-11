# Write a function to find the longest common prefix string amongst an array of strings.
# If there is no common prefix, return an empty string "".
# LeetCode 

def longest_common_prefix(strs)
    prefix = ""
    base = strs[0]

    for i in 0..base.length-1
        if strs.all?{ |word| word[i] == base[i] }
            prefix += base[i]
        else
            break
        end
    end
    p prefix
end

longest_common_prefix(["flower","flow","flight"])