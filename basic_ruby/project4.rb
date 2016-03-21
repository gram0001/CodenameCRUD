def bubble_sort(array)
  0.upto(array.length - 2) do |i|
    (0).upto(array.length - i - 2) do |j|
      if array[j] > array[j+1]
        temp = array[j]
        array[j] = array[j+1]
        array[j+1] = temp
      end
    end
  end
  array
end
puts bubble_sort([4,3,78,2,0,2])

def bubble_sort_by(array, &block)
  0.upto(array.length - 2) do |i|
    (0).upto(array.length - i - 2) do |j|
      if block.call(array[j], array[j+1]) == 1
        temp = array[j]
        array[j] = array[j+1]
        array[j+1] = temp
      end
    end
  end
  puts array
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
   left.length <=> right.length
end
