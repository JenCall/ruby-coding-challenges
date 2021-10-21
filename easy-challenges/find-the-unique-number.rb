# Find the unique number

# There is an array with some numbers. All numbers are equal except for one. Try to find it!
# find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
# find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
# It’s guaranteed that array contains at least 3 numbers.
# The tests contain some very huge arrays, so think about performance.

def find_uniq(arr)
    arr.sort!
    arr[0] == arr[1] ? arr[-1] : arr[0]
end
p find_uniq([3, 3, 1, 3, 3, 3, 3, 3])

# more solutions
def find_uniq(arr)
    arr.uniq.find { |n| arr.count(n) == 1 }
end

def find_uniq(arr)
    arr.uniq.detect { |number| arr.count(number) == 1 }
end

def find_uniq(arr)
    arr.group_by(&:itself).values.min_by(&:length).first
end

def find_uniq arr
    arr.find.with_index{|n, i| n != arr[i-1] && n != arr[i+1]}
end