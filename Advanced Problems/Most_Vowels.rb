# Write a method most_vowels that takes in a sentence string and
# returns the word of the sentence that contains the most vowels.

def most_vowels(sentence)
  most = "" # word with most vowels
  most_count = 0 # vowel count for word with most vowels
  vowel_count = 0 # for current iteration
  words = sentence.split
  
  words.each do |word|
    vowel_count = count_vowels(word)
    if vowel_count > most_count
      most = word
      most_count = vowel_count
    end

    vowel_count = 0
  end
  
  return most
end

def count_vowels(word)
  count = 0
  vowels = "aeiou"
  word.each_char do |char|
    if vowels.include?(char)
      count += 1
    end
  end
  
  return count
end

print most_vowels("what a wonderful life") #=> "wonderful"