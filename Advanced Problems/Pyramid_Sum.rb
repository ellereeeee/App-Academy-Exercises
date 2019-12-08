# Write a method pyramid_sum that takes in an array of numbers 
# representing the base of a pyramid. The function should return a 2D 
# array representing a complete pyramid with the given base. To 
# construct a level of the pyramid, we take the sum of adjacent 
# elements of the level below.

# For example, the base [1, 4, 6] gives us the following pyramid
#     15
#   5   10
# 1   4    6

def pyramid_sum(base)
  pyramid = [base]
  
  while pyramid[0].length > 1
    next_level = adjacent_sum(pyramid[0])
    pyramid.unshift(next_level)
  end
  
  return pyramid
end

def adjacent_sum(arr)
  sums = []
  
  arr.each_with_index do |key, idx|
    if key != arr[-1]
      sums << key + arr[idx + 1]
    end
  end
  
  return sums
end

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts