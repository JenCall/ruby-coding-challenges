# Find Three Largest Numbers
# Write a function that takes in an array of at least 3 integers and, without
# sorting the input array, returns a sorted array of the three largest numbers
# in the input array

#First solution O(n)
def three_largest_number(nums)
    threeLargest = [1, 1, 1]
    nums.each do |n|
        if n > threeLargest[2]
            threeLargest[1] = threeLargest[2]
            threeLargest[2] = n

        elsif n > threeLargest[1]
            threeLargest[0] = threeLargest[1]
            threeLargest[1] = n

        elsif n > threeLargest[0]
            threeLargest[0] = n 
        end
    end
    threeLargest
end

p  three_largest_number([1,4,2,9,5,7])