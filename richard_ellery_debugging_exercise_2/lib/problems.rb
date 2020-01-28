# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

require 'byebug'

def largest_prime_factor(num)
  composites = (2..num).select do |val|
    num % val == 0
  end
  
  prime_composites = composites.select do |val|
  (2...val).all? { |val2| val % val2 != 0 }
  end

  largest_prime_composite = prime_composites.max
  largest_prime_composite
end

def unique_chars?(str)
  char_count = Hash.new(0)
  
  str.each_char do |char|
    char_count[char] += 1
    return false if char_count[char] == 2
  end
  
  true
end

def dupe_indices(arr)
  indices = Hash.new{ |h, k| h[k] = [] }
  
  arr.each.with_index do |key, idx|
    indices[key] << idx
  end

  dupes = indices.select do |key, val|
    val.length > 1
  end

  dupes
end

def ana_array(arr1, arr2)
  return false if arr1.length != arr2.length
  
  arr1.each do |val|
    return false if !arr2.include?(val)
  end

  arr2.each do |val|
    return false if !arr1.include?(val)
  end

  true
end