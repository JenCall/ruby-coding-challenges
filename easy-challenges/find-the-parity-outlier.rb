# Find The Parity Outlier

# You are given an array (which will have a length of at least 3, but could be very 
# large) containing integers. The array is either entirely comprised of odd integers 
# or entirely comprised of even integers except for a single integer N. Write a method 
# that takes the array as an argument and returns this "outlier" N.

def find_outlier(integers)
    even = 0
    odd = 0
    num = 0
    
    # first identify the number of odd or even numbers in the array
    integers[0..2].each { |i| i % 2 == 0 ? even += 1 : odd += 1 }
    
    # more even than odd? then we are looking for odd num and viceversa
    if even > odd
      integers.each { |i| num = i if i % 2 != 0 }
    else
      integers.each { |i| num = i if i % 2 == 0 }
    end
    return num
  end

  p find_outlier([2,3,4,6,8])