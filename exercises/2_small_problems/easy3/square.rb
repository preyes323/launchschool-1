def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def power(num, powertothe)
  total = num
  (powertothe-1).times { total = multiply(total, num) }
  total
end

puts square(5) == 25
puts square(-8) == 64

puts power(5, 2)
puts power(3, 3)
