# def hipsterfy(word)
#   reversed = word.reverse
#   vowels = "aeiou"

#   reversed.each_char.with_index do |char, idx|
#     if vowels.include?(char)
#       reversed[idx] = ""
#       break
#     end
#   end

#   hipsterfied = reversed.reverse
#   hipsterfied
# end

# def vowel_counts(str)
#   counts = Hash.new(0)
#   vowels = "aeiou"
#   str.each_char { |char| counts[char.downcase] += 1 if vowels.include?(char.downcase) }
#   counts
# end

def caesar_cipher(msg, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  encrypted = ""
  
  return msg if !alphabet.include?(char)

  msg.each_char do |char|
    shifted_idx = alphabet.index(char) + num
    shifted_char = alphabet[shifted_idx % 26]
    encrypted += shifted_char
  end

  encrypted
end

p caesar_cipher("123 _-!?@%", 3)