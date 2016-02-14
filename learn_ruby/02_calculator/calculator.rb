def add (first, second)
  first + second
end

def subtract (first, second)
  first - second
end

def sum (array)
  sum = 0
  array.each {|element| sum += element}
  sum
end

def multiply (array)
  sum = 1
  array.each { |x| sum *= x}
  sum
end

def power (a, b)
  a ** b
end

def factorial(n)
  fact = 1
  n.times do |i|
    fact *= i + 1
  end
  fact
end
