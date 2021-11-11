# Write a function to find the longest common prefix string amongst an array of strings.
# If there is no common prefix, return an empty string "".
# LeetCode 

# first solution
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

# second idea of solution
def longest_common_prefix(strs)
    return '' if strs.empty?
  
    idx = 0
    prefix_count = 0
  
    while true
      curr_char = strs.first[idx]
  
      break if curr_char.nil?
      break unless strs.all? { |str| str[idx] == curr_char }
  
      prefix_count += 1
      idx += 1
    end
  
    return '' if prefix_count.zero?
  
    strs.first[0...prefix_count]
  end