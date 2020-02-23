# Write a method count_e(word) that takes in a string 
# word and returns the number of e's in the word

def count_e(word)
  eCount = 0
  i = 0
  
  while i < word.length
    char = word[i]
    
    if char == "e"
      eCount += 1
    end
    
    i += 1
  end
  
  return eCount
end

puts count_e("movie") # => 1
puts count_e("excellent") # => 3