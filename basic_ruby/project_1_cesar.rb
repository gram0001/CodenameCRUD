class CesarCipher
  attr_accessor :text, :shift_factor
  def initialize(text, shift_factor)
    @text = text
    @shift_factor = shift_factor
  end
  def cesar_cipher
    new_text= ""
    @text.each_char do |letter|
      if letter.ord >= 97 && letter.ord <= 122
        temp = letter.ord + @shift_factor
        if temp > 122
          temp -= 26
        elsif temp < 97
          temp += 26
        end
      elsif letter.ord >= 65 && letter.ord <= 90
        temp = letter.ord + @shift_factor
        if temp > 90
          temp -= 26
        elsif temp < 65
          temp += 26
        end
      else
        temp = letter
      end
      new_text += temp.chr
    end
    new_text
  end
end

test = CesarCipher.new('THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG', -3)
puts test.cesar_cipher
