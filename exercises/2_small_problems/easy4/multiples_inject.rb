def multisum(input)
  numbers = (1..input).select do |number|
    number % 3 == 0 || number % 5 == 0
  end
  numbers.inject(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
