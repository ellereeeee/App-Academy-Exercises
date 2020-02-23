# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
  characters = str.split("")
  compressed_eles = []
  count = 1

  characters[0..-1].each_with_index do |char, idx|
    testing = char
    if characters[idx + 1] == testing
      count += 1
    else
      compressed_eles << count if count > 1
      compressed_eles << testing
      count = 1
    end
  end

  compressed_eles.join
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
