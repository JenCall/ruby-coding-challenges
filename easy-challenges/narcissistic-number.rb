# Does my number look big in this?

# A Narcissistic Number is a positive number which is the sum of its own digits, 
# each raised to the power of the number of digits in a given base. In this Kata, 
# we will restrict ourselves to decimal (base 10). --> must return true or false.

def narcissistic?(value)
    values = value.to_s.split(//)
    digits_size = values.length
    numbers = [1,2,3,4,5,6,7,8,9,10]
    sum = 0
    values.each do |i|
        sum += i.to_i ** digits_size
    end
    value == sum ? true : false
end

p narcissistic?(5)