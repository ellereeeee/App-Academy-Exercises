def partition(arr, num)
  arrays = [[],[]]
  arr.each { |ele| ele < num ? arrays[0] << ele : arrays[1] << ele }
  arrays
end

def merge(hash_1, hash_2)
  merged = {}
  hash_1.each { |key, val| merged[key] = val }
  hash_2.each { |key, val| merged[key] = val }
  merged
end

def censor(sent, arr)
  censored_sent = []
  words = sent.split(" ")
  vowels = "aeiou"

  words.each do |word|
    censored_word = ""
    if arr.include?(word.downcase)
      word.each_char { |char| vowels.include?(char.downcase) ? censored_word += "*" : censored_word += char }
    else
      censored_word = word
    end
    censored_sent << censored_word
  end

  censored_sent.join(" ")
end

def power_of_two?(num)
  return true if num == 1
  quotient = num / 2

  while quotient > 2
    quotient /= 2
  end

  quotient == 2
end