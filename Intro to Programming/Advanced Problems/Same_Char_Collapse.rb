# Write a method same_char_collapse that takes in a string and returns a collapsed 
# version of the string. To collapse the string, we repeatedly delete 2 adjacent 
# characters that are the same until there are no such adjacent characters. If there are 
# multiple pairs that can be collapsed, delete the leftmost pair. For example, we take 
# the following steps to collapse "zzzxaaxy": zzzxaaxy -> zxaaxy -> zxxy -> zy

def same_char_collapse(word)
  word.each_char.with_index do |char, idx|
    if char == word[idx + 1]
      word[idx..idx + 1] = ""
      same_char_collapse(word)
    end
  end
  
  return word
end

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy


puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv