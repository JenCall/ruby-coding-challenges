# Multiples of 3 or 5

# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23. Finish the solution 
# so that it returns the sum of all the multiples of 3 or 5 below the number 
# passed in. Additionally, if the number is negative, return 0 (for languages 
# that do have them). If number is a multiple of both 3 and 5, only count it once.

def solution(number)
    array = (0...number).to_a
    sum = 0
    array.each do |i|
        if i % 3 == 0
            sum += i
        elsif i % 5 == 0
            sum += i
        end
    end
    return sum
end

p solution(10)