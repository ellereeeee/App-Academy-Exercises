# Write a method vowel_cipher that takes in a string and returns a new 
# string where every vowel becomes the next vowel in the alphabet.

def vowel_cipher(string)
  encrypted = ""
  vowels = "aeiou"
  
  string.each_char do |char|
    if vowels.include?(char)
      old_idx = vowels.index(vowels[char])
      new_idx = old_idx + 1
      new_char = vowels[new_idx % 5]
      encrypted += new_char
    else
      encrypted += char
    end
  end
  
  return encrypted
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap
