# 11 Sort the odd
# You will be given an array of numbers. You have to sort the odd numbers in 
# ascending order while leaving the even numbers at their original positions.

# Examples
# [7, 1]  =>  [1, 7]
# [5, 8, 6, 3, 4]  =>  [3, 8, 6, 5, 4]
# [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]  =>  [1, 8, 3, 6, 5, 4, 7, 2, 9, 0]

# first try
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
sort_array([9, 8, 7, 6, 5, 4, 3, 2, 1, 0])

# second solution
def sort_array_2(source_array)
    array_of_odds = source_array.select(&:odd?).sort
    source_array.map { |n| n.even? ? n : array_of_odds.shift }
end
p sort_array_2([9, 8, 7, 6, 5, 4, 3, 2, 1, 0])

# other solutions
def sort_array(xs)
    odd = xs.select(&:odd?).sort.each
    xs.map{ |x| x.odd? ? odd.next : x }
end

def sort_array(source_array)
    odds = source_array.select(&:odd?).sort
    source_array.map { |e| e.odd? ? odds.shift : e }
end

def sort_array(arr)
    odds = arr.select(&:odd?).sort
    arr.map{|m| m.odd? ? odds.shift : m}
end

# Methods

# shift -> 
# Removes the first element of self and returns it (shifting all other 
# elements down by one). Returns nil if the array is empty.
# If a number n is given, returns an array of the first n elements (or less) 
# just like array.slice!(0, n) does. With ary containing only the remainder 
# elements, not including what was shifted to new_ary. See also #unshift for 
# the opposite effect.