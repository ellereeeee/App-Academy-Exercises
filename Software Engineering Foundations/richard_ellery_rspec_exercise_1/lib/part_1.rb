def average(num_1, num_2)
  int_avg = (num_1 + num_2) / 2
  float_avg = (num_1 + num_2) / 2.0
  int_avg == float_avg ? int_avg : float_avg
end

def average_array(arr)
  int_avg = arr.sum/arr.length
  float_avg = arr.sum/(arr.length * 1.0)
  int_avg == float_avg ? int_avg : float_avg
end

def repeat(str, num)
  str * num
end

def yell(str)
  str.upcase + "!"
end

def alternating_case(str)
  str.split(" ").map.with_index { |word, idx| idx % 2 == 0 ? word.upcase : word.downcase }.join(" ")
end