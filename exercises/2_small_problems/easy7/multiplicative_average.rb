def show_multiplicative_average(array)
  total_count = array.size.to_f
  array_multiplied = array.reduce(:*)
  average = array_multiplied / total_count
  sprintf('%.3f', average)
end

puts show_multiplicative_average([3, 5])
# The result is 7.500

puts show_multiplicative_average([6])
# The result is 6.000

puts show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667
