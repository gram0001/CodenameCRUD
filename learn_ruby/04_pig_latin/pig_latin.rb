def translate(words)
  words = words.split
  translated_array = []
  words.each do |word|
    if word[/^[aeoui]{1,}/]
      translated_array << word + "ay"
    elsif word[/^[^aeoui]{0,}?qu/]
      translated_array << word[word[/^[^aeoui]{0,}?qu/].length,word.length] + word[/^[^aeoui]{0,}?qu/] + "ay"
    else
      res = word[/^[^aeoui]{1,}/]
      translated_array << word[res.length,word.length] + res + "ay"
    end
  end
  translated_array.join(" ")
end
