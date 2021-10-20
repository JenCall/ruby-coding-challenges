# Does my number look big in this?

# A Narcissistic Number is a positive number which is the sum of its own digits, 
# each raised to the power of the number of digits in a given base. In this Kata, 
# we will restrict ourselves to decimal (base 10). --> must return true or false.

# first solution
def narcissistic?(value)
    # bring number into an array
    values = value.to_s.split(//)
    # find the array's size
    digits_size = values.length
    # create sum variable to sum the results in the loop
    sum = 0
    # for loop to calculate the power of it item in the array + sum them
    values.each { |i| sum += i.to_i ** digits_size }
    # if final sum is equal initial value then true, otherwise false
    value == sum ? true : false
end

p narcissistic?(5)