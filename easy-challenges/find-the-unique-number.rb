# Find the unique number

# There is an array with some numbers. All numbers are equal except for one. Try to find it!
# find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
# find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
# It’s guaranteed that array contains at least 3 numbers.
# The tests contain some very huge arrays, so think about performance.

def find_uniq(arr)
    p arr
    array = arr.each_slice( (arr.size/3.0).round ).to_a
    if array[0].reduce(0, :+) == array[1].reduce(0, :+)
        array[2].each { |i| return i if array[0][0] != i }
    elsif  
        array[1].each { |i| return i if array[0][0] != i }
    elsif  
        array[0].each { |i| return i if array[2][0] != i }
    end
end

p find_uniq([3, 3, 2, 3, 3, 3, 3, 3])
# find-the-unique-number.rb