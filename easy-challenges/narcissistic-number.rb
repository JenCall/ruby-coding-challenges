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

# shorter solution
def narcissistic1?( value )
    value == value.to_s.chars.map { |x| x.to_i**value.to_s.size }.reduce(:+)
end
p narcissistic1?(5)

# interesting solution
def narcissistic2?(n)
    n == n.digits.map { |d| d**n.digits.size } .sum
end
p narcissistic3?(5)

# digitis method

# 567321.digits
# 3#=> [1, 2, 3, 7, 6, 5]
# 4
# 5567321.digits[3]
# 6#=> 7

# 0123.digits(8)
# 3#=> [3, 2, 1]
# 4
# 50xabcdef.digits(16)
# 6#=> [15, 14, 13, 12, 11, 10]

# 123.to_s.chars.map(&:to_i).sum
# 3#=> 6
# 4
# 5123.digits.sum
# 6#=> 6