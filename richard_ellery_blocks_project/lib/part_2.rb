def all_words_capitalized?(arr)
  arr.all? { |word| word == word.capitalize }
end

# helper method for no_valid_url?
# returns true if url is valid

def valid_url?(url)
  valid_urls = [".com", ".net", ".io", ".org"]
  url_ending = url[url.index(".")..-1]
  valid_urls.include?(url_ending)
end

def no_valid_url?(urls)
  urls.none? { |url| valid_url?(url) }
end

# helper method for any_passing_students?
# returns average of numbers in an array

def find_average(arr)
  arr.sum / arr.length
end

def any_passing_students?(students)
  students.any? do |student|
    average = find_average(student[:grades])
    average > 75
  end
end