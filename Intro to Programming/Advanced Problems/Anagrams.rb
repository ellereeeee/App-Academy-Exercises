# Write a method anagrams? that takes in two words and returns a boolean indicating 
# whether or not the words are anagrams. Anagrams are words that contain the same 
# characters but not necessarily in the same order. Solve this without using .sort

def anagrams?(word1, word2)
  if word1.length != word2.length
    return false
  end
  
  word1.each_char do |char|
    if !word2.include?(char)
      return false
    end
  end
  
  return true
end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false