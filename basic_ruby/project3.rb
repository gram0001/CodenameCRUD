def substrings(string, dictionary)
  array_string = string.split
  result = {}
  array_string.each do |word_from_string|
    dictionary.each do |word_from_dictionary|
      if word_from_string.downcase.include? word_from_dictionary
        result[word_from_dictionary] = result.fetch(word_from_dictionary, 0) + 1
      end
    end
  end
  result
end
dictionary = ['below','down','go','going','horn','how','howdy','it','i','low','own','part','partner','sit']

substrings('below', dictionary).each {|key, value| puts "#{key} #{value}"}
substrings("Howdy partner, sit down! How's it going?", dictionary).each {|key, value| puts "#{key} #{value}"}
