def echo (message)
  message
end

def shout (message)
  message.upcase
end

def repeat (message, number = 2)
  ((message +" ") * number).rstrip!
end

def start_of_word (message, number)
  message [0, number]
end

def first_word (message)
  message.split[0]
end

 def titleize (message)
   word_array = message.split
   exception = ["and", "or", "the", "over", "by", "any", "all"]
   capitalized = []
   word_array.map do |word|
     unless exception.include?(word)
       capitalized << word.capitalize!
     else
       capitalized << word
     end
   end
   capitalized[0].capitalize!
   capitalized.join(" ")
end
