require 'byebug'

def select_even_nums(arr)
  arr.select(&:even?)
end

def reject_puppies(arr)
  arr.reject { |hash| hash["age"] < 3 }
end

def count_positive_subarrays(arr)
  arr.count { |sub_arr| sub_arr.sum > 0 }
end

def aba_translate(word)
  aba_output = ""
  vowels = "aeiou"
  
  word.each_char do |char|
    vowels.include?(char) ? aba_output += char + "b" + char : aba_output += char
  end

  aba_output
end

def aba_array(arr)
  arr.map { |word| aba_translate(word) }
end