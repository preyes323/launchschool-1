def fibonacci_last(n)
  final_val = 1
  val_minus_two = 1
  val_minus_one = 1
  1.upto(n) do |value|
    next if value == 1 || value == 2
    final_val = val_minus_two + val_minus_one
    val_minus_two = val_minus_one
    val_minus_one = final_val
  end
  final_val.to_s[-1].to_i
end

puts fibonacci_last(15) == 0         # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20) == 5       # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100) == 5       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001) == 1   # -> 1 (this is a 20899 digit number)
puts fibonacci_last(1_000_007) == 3 # -> 3 (this is a 208989 digit number)
puts fibonacci_last(123456789) == 4 # -> 4
