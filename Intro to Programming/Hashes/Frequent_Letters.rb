# Write a method frequent_letters that takes in a string and returns an
# array containing the characters that appeared more than twice in the string.

def frequent_letters(string)
  all = Hash.new(0)
  frequents = []
  
  string.each_char {|char| all[char] += 1}
  
  all.each do |key, val|
    if val > 2
      frequents << key
    end
  end
  
  return frequents
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts