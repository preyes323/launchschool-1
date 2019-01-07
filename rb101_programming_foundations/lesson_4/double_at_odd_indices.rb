def double_odd_indexed_numbers(array)
  counter = 0
  doubled_numbers = []

  loop do
    break if counter == array.size
    current_number = array[counter]
    current_number *= 2 if counter % 2 != 0
    doubled_numbers << current_number
    counter += 1
  end
  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
puts double_odd_indexed_numbers(my_numbers)
