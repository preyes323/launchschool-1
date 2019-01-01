def multisum(input)
  total = 0
  (1..input).each do |number|
    total += number if (number % 5 == 0 || number % 3 == 0)
  end
  total
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
