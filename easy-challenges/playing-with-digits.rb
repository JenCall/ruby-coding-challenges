# Playing with digits

# Some numbers have funny properties. For example:
# 89 --> 8¹ + 9² = 89 * 1
# 695 --> 6² + 9³ + 5⁴= 1390 = 695 * 2
# 46288 --> 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51

# Examples:
# dig_pow(89, 1) should return 1 since 8¹ + 9² = 89 = 89 * 1
# dig_pow(92, 1) should return -1 since there is no k such as 9¹ + 2² equals 92 * k
# dig_pow(695, 2) should return 2 since 6² + 9³ + 5⁴= 1390 = 695 * 2
# dig_pow(46288, 3) should return 51 since 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51

# first solution
def dig_pow(n, p)
    digit = n.to_s.split(//)
    power_num = [*p..10] # or (p..10).to_a
    sum = j = 0

    digit.each { |n| sum += n.to_i ** power_num[j] 
        j += 1 
    }
    sum % n != 0 ? -1 : sum / n
end
p dig_pow(695, 2)

# additional solution
def dig_pow1(n, p)
    sum=0
    digits = n.to_s.split('').map { |digit| digit.to_i }.each  do |i|
    sum += i ** (p)
        p+=1
    end
    sum%n == 0 ? k=sum / n : k=-1
    return k
end
p dig_pow(695, 2)

def dig_pow(n, p)
    total = n.to_s.split('').map.with_index{|d, i| d.to_i ** (p+i)}.reduce(:+)
    total % n == 0 ? (total / n) : -1
end

def dig_pow(n, p)
    sum = n.digits.reverse.each_with_index.sum{ |d, i| d ** (p + i) }
    
    sum % n == 0 ? sum / n : -1
end