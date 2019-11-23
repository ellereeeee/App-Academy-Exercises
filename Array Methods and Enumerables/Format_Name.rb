# Write a method format_name that takes in a name 
# string and returns the name properly capitalized.

# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def format_name(str)
  names = str.split(" ")
  formatted = []
  
  names.each do |name|
    formatted << name[0].upcase + name[1..-1].downcase
  end
  
  return formatted.join(" ")
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"