def palindrome?(str)
  reversed = ""
  str.each_char { |char| reversed = char + reversed}
  str == reversed
end

def substrings(str)
  all_sub_str = []

  str.each_char.with_index do |char, idx|
    all_sub_str << char
    sub_str = char
    i = idx + 1
    while i <= str.length - 1
      sub_str += str[i]
      all_sub_str << sub_str
      i += 1
    end
  end

  all_sub_str
end

def palindrome_substrings(str)
  all_sub_str = substrings(str)
  palindrome_sub_str = []

  all_sub_str.each { |sub_str| palindrome_sub_str << sub_str if palindrome?(sub_str) && sub_str.length > 1 }

  palindrome_sub_str
end