def double_numbers!(array)
  counter = 0

  loop do
    break if array.size == counter
    current_number = array[counter]
    array[counter] = current_number * 2
    counter += 1
  end
  array
end

my_numbers = [1, 4, 3, 7, 2, 6]
puts double_numbers!(my_numbers)
