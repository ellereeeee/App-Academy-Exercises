# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

# find factors of both numbers
# see if any of the factors of the smaller number is 
# the same as one of the factors in the bigger number
# if yes return false, else return true

def coprime?(num1, num2)
  (2...num1).none? { |divisor| num1 % divisor == 0 && num2 % divisor == 0}
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
