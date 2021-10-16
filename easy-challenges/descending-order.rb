# Descending Order

# Your task is to make a function that can take any non-negative integer 
# as an argument and return it with its digits in descending order. 
# Essentially, rearrange the digits to create the highest possible number.

def descending_order(n)
    new_num = ""
    n.to_s.split("").each { |i| 
      unless i.to_i < 0 
        new_num << i
      end }
    new_num.split("").sort_by { |j| j }.join("").reverse.to_i
end

descending_order(3784569)

# second solution
def descending_order_1(n)
    n.to_s.chars.sort.reverse.join.to_i
end

# 3. solution
def descending_order(n)
    n.digits.sort.reverse.join.to_i
end

# 4. solution
def descending_order(n)
    n.to_s.split("").sort { |x,y| y <=> x }.join.to_i
end

# 5. solution
def descending_order(n)
    n.to_s.split('').sort.reverse.join.to_i
end