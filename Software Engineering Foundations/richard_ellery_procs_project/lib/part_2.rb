def reverser(str, &prc)
  prc.call(str.reverse)
end

def word_changer(str, &prc)
  new_sentence = []
  words = str.split(" ")

  words.each { |word| new_sentence << prc.call(word) }

  new_sentence.join(" ")
end

def greater_proc_value(num, prc_1, prc_2)
  vals = []
  vals << prc_1.call(num)
  vals << prc_2.call(num)
  vals.max
end

def and_selector(arr, prc_1, prc_2)
  passed = []

  arr.each { |ele| passed << ele if prc_1.call(ele) && prc_2.call(ele) }

  passed
end

def alternating_mapper(arr, prc_1, prc_2)
  results = []

  arr.each_with_index do |ele, idx|
    results << prc_1.call(ele) if idx.even?
    results << prc_2.call(ele) if idx.odd?
  end

  results
end