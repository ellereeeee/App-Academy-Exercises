# Debug this code to pass rspec! There are 3 mistakes to fix.

# Write a method, letter_count, that accepts a string and char as args. 
# The method should return the number of times that the char appears in the string.

require "byebug"

def letter_count(string, char)
    count = 0 # need to initalize variable w/ 0 if using intenger data type
    string.each_char do |c| 
        count += 1 if c.downcase == char # use downcase to work w/ uppercase args, use == for equality operator
    end
    count
end