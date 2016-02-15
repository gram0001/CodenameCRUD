class Book
  attr_writer :title

  def title
    array = @title.split
    res = []
    exceptions = ["the", "a", "an", "and", "or", "over", "by", "any", "all", "of", "in"]
    array.each do |word|
      if exceptions.include? word
        res << word
      else
        res << word.capitalize
      end
    end
    res[0].capitalize!
    res.join(" ")
  end
end
