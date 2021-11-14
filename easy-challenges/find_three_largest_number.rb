# Find Three Largest Numbers
# Write a function that takes in an array of at least 3 integers and, without
# sorting the input array, returns a sorted array of the three largest numbers
# in the input array

#First solution O(n)
def three_largest_number(nums)
    threeLargest = [0, 0, 0]                    # this will be the final array / with None in Python
    nums.each do |n|                            # loop through the given array
        if n > threeLargest[2]                  # compare with the three largest (final) array last position
            threeLargest[1] = threeLargest[2]   # if condition true -> shift the number and    
            threeLargest[2] = n                 # replace the position
                                                # the same as above
        elsif n > threeLargest[1]               # compare with the three largest (final) array before last position
            threeLargest[0] = threeLargest[1]   # if condition true -> shift the number first and then
            threeLargest[1] = n                 # replace the position

        elsif n > threeLargest[0]               # compare with the three largest (final) array first position
            threeLargest[0] = n                 # if condition true -> replace the number, no need to shift anymore
        end
    end
    threeLargest
end
p  three_largest_number([1,4,2,9,-5,7])