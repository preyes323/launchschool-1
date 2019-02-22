def fibonacci(n)
  total = 0
  (1..n).each do |num|
    puts num
    total += num
  end
  "total is #{total}"
end

#puts fibonacci(1) == 1
#puts fibonacci(2) == 1
#puts fibonacci(3) == 2
#puts fibonacci(4) == 3
#puts fibonacci(5) == 5
#puts fibonacci(12) == 144
#puts fibonacci(20) == 6765
#puts fibonacci(50)
#puts fibonacci(20) == 6765
#puts fibonacci(100) == 354224848179261915075
#puts fibonacci(100_001) # => 4202692702.....8285979669707537501

puts fibonacci(3)
