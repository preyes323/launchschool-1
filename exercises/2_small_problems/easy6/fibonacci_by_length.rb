def find_fibonacci_index_by_length(digits)
  index = 2
  fib1 = 1
  fib2 = 1
  loop do
    subsequent = fib1 + fib2
    fib1, fib2 = fib2, subsequent
    index += 1
    break if subsequent.to_s.size == digits
  end
  index
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
