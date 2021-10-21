# 11 Sort the odd
# You will be given an array of numbers. You have to sort the odd numbers in 
# ascending order while leaving the even numbers at their original positions.

# Examples
# [7, 1]  =>  [1, 7]
# [5, 8, 6, 3, 4]  =>  [3, 8, 6, 5, 4]
# [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]  =>  [1, 8, 3, 6, 5, 4, 7, 2, 9, 0]

def sort_array(source_array)
    x_array = Array.new
    odd = Array.new
    final_array = Array.new

    source_array.each { |i|
        if i % 2 == 0
            x_array << i
        else
            x_array << "x"
            odd << i
        end
    }

    j = 0

    x_array.each { |n| 
        if n == "x" 
            final_array << odd.sort[j]
            j += 1
        else 
            final_array << n 
        end 
    } 
    final_array
end

p sort_array([9, 8, 7, 6, 5, 4, 3, 2, 1, 0])