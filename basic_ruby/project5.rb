module Enumerable
  def my_each
    return self.to_enum unless block_given?
    for i in self
      yield i
    end
    self
  end

  def my_each_with_index
    return self.to_enum unless block_given?
    0.upto(self.length - 1) do |i|
      yield(self[i], i)
    end
    self
  end

  def my_select
    return self.to_enum unless block_given?
    array = []
    self.my_each {|element| array << element if yield(element)}
    array
  end

  def my_all?
    if block_given?
      self.my_each {|element| return false unless yield(element)}
      return true
    else
      self.my_each {|element| return false unless element}
      return true
    end
  end

  def my_any?
    if block_given?
      self.my_each {|element| return true if yield(element)}
      return false
    else
      self.my_each {|element| return true if element}
      return false
    end
  end

  def my_none?
    if block_given?
      self.my_each {|element| return false if yield(element)}
      return true
    else

      self.my_each {|element| return false if element}
      return true
    end
  end

  def my_count(flag = false)
    if block_given?
      return (self.select {|element| yield(element)}).length
    elsif flag
      return (self.select {|element| element == flag}).length
    else
      return self.length
    end
  end

  def my_map
    return self.to_enum unless block_given?
    array = []
    self.my_each {|element| array << yield(element)}
    array
  end

  def my_inject(initial=nil)
    memo = initial ? initial : self[0]
    self.my_each {|element| memo = yield(memo, element)}
    memo
	end

  def my_map_imp(proc=false)
    array = []
    if proc && block_given? || block_given?
      self.my_each {|element| array << yield(element)}
    else
      self.my_each{|element| array << proc.call(element)}
    end
    array
  end

end

def multiply_els(array)
  array.my_inject(1) {|product, element| product * element}
end
