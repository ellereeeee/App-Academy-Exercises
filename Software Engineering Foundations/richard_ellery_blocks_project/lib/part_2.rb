def all_words_capitalized?(arr)
  arr.all? { |word| word == word.capitalize }
end

def no_valid_url?(urls)
  valid_urls = [".com", ".net", ".io", ".org"]
  urls.none? do |url|
    valid_urls.any? { |ending| url.end_with?(ending) }
  end
end

# helper method for any_passing_students?
# returns average of numbers in an array

def find_average(arr)
  arr.sum / arr.length * 1.0
end

def any_passing_students?(students)
  students.any? do |student|
    average = find_average(student[:grades])
    average >= 75
  end
end