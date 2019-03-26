def fibonacci(n)
  fib_array = [1, 1]
  1.upto(n) do |value|
    next if value == 1 || value == 2
    fib_array << fib_array[value-3] + fib_array[value-2]
  end
  fib_array.last
end

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765
puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075

# input is an int
# output is the value for the nth number in the sequence

# algorithm
# - first or second values return 1

# initialise a fib_array = [1, 1]
# 1 until n
# (next if the index is 0 or 1)
# 3: index will be 2 we calculate the value by adding fib_array[idx-2] + fib_array[idx-1]
# add that value to the fib_array


def fibonacci(n)
  final_val = 1
  val_minus_two = 1
  val_minus_one = 1
  1.upto(n) do |value|
    next if value == 1 || value == 2
    final_val = val_minus_two + val_minus_one
    val_minus_two = val_minus_one
    val_minus_one = final_val
  end
  final_val
end

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765
puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075

# input is an int
# output is the value for the nth number in the sequence

# algorithm
# - first or second values return 1

# initialise a fib_array = [1, 1]
# 1 until n
# (next if the index is 0 or 1)
# 3: index will be 2 we calculate the value by adding fib_array[idx-2] + fib_array[idx-1]
# add that value to the fib_array
