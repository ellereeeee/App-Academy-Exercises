# Write a method consonant_cancel that takes in a sentence and returns a new sentence 
# where every word begins with it's first vowel.

def consonant_cancel(sentence)
  return sentence.split.map { |word| reduce_word(word) }.join(" ")
end

def reduce_word(word)
  vowels = "aeiou"
  word.each_char.with_index do |char, idx|
    if vowels.include?(char)
      return word[idx..-1]
    end
  end
end

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"