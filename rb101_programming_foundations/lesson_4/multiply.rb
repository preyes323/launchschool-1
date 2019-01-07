def multiply(numbers_array, multiplier)
  counter = 0
  multiplied_numbers = []

  loop do
    break if counter == numbers_array.size

    multiplied_numbers << numbers_array[counter] * multiplier
    counter += 1
  end
  multiplied_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
puts multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
