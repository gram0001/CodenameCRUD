def stock_picker(array)
  result = 0
  answer=[0, 0]
  (array.length-2).downto(0) do |i|
    min = array[0..i].min
    max = array[i...array.length].max
    if max-min > result
      result = max-min
      answer[0] = array.index(min)
      answer[1] = array.index(max)
    end
  end
  answer
end
result = stock_picker([17,3,6,9,15,8,6,1,10])
puts "#{result[0]}, #{result[1]}"
