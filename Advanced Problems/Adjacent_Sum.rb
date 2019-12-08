# Write a method adjacent_sum that takes in an array of numbers and
# returns a new array containing the sums of adjacent numbers in the 
# original array. See the examples.

def adjacent_sum(arr)
  sums = []
  
  arr.each_with_index do |key, idx|
    if key == arr[-1]
      break
    else
      sums << key + arr[idx + 1]
    end
  end
  
  return sums
end

print adjacent_sum([3, 7, 2, 11]) #=> [10, 9, 13], because [ 3+7, 7+2, 2+11 ]
puts
print adjacent_sum([2, 5, 1, 9, 2, 4]) #=> [7, 6, 10, 11, 6], because [2+5, 5+1, 1+9, 9+2, 2+4]
puts