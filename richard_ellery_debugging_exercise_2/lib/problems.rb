# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

require 'byebug'

def largest_prime_factor(num)
  range = [*2..num]
  composites = range.select do |val|
    num % val == 0
  end
  
  prime_composites = composites.select do |val|
    [*2...val].all? { |val2| val % val2 != 0 }
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
  dupes_and_indices = {}
  char_count = Hash.new(0)
  
  # make hash with strings and times appeared in array arg
  arr.each do |str|
    char_count[str] += 1
  end

  # put strings that appeared more than once in dupes_and_indices
  char_count.each do |key, val|
    dupes_and_indices[key] = [] if val > 1
  end

  # assign indices from array arg into corresponding vals in dupes_and_indices
  dupes_and_indices.each_key do |key|
    arr.each.with_index do |str, idx|
      if str == key
        dupes_and_indices[key] << idx
      end
    end
  end
  
  dupes_and_indices
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