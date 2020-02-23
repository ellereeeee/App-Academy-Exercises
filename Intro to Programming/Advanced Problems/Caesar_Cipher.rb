# Write a method caesar_cipher that takes in a string and a number. The 
# method should return a new string where every character of the 
# original is shifted num characters in the alphabet.

# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher(str, num)
  encrypted_str = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  
  str.each_char.with_index do |char, idx|
    original_idx = alphabet.index(char)
    if original_idx + num >= 25
      shifted_idx = (24 - original_idx) + num
    else
      shifted_idx = original_idx + num
    end
    encrypted_str += alphabet[shifted_idx]
  end
  
  return encrypted_str
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"