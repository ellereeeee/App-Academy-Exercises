# Write a method prime? that takes in a number and returns a boolean,
# indicating whether the number is prime. A prime number is only
# divisible by 1 and itself.

# addition info: A prime number is a natural number greater than 1 
# that cannot be formed by multiplying two smaller natural numbers. 
# A natural number greater than 1 that is not prime is called a 
# composite number. For example, 5 is prime because the only ways of
# writing it as a product, 1 × 5 or 5 × 1, involve 5 itself.

def prime?(num)
  if num < 2
    return false
  end
  
  (2...num).each do |i|
    if num % i == 0
      return false
    end
  end
  
  return true
end

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false