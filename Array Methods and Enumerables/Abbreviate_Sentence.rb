# Write a method abbreviate_sentence that 
# takes in a sentence string and returns a 
# new sentence where every word longer than 
# 4 characters has all of it's vowels removed.

def abbreviate_sentence(sent)
  abbreviated = [ ]
  words = sent.split(" ")
  
  words.each do |word|
    if word.length > 4
      abbreviated_word = abbreviate(word)
      abbreviated << abbreviated_word
    else
      abbreviated << word
    end
  end
  
  return abbreviated.join(" ")
end

def abbreviate(word)
  abbreviated_word = ""
  vowels = "aeiou"
  
  word.each_char do |char|
    if vowels.include?(char)
      abbreviated_word += ""
    else 
      abbreviated_word += char
    end
  end
  
  return abbreviated_word
end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"