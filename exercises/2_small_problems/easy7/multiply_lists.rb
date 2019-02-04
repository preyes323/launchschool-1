def multiply_list(array1, array2)
  new_array = []
  array1.size.times do |idx|
    new_array << array1[idx] * array2[idx]
  end
  new_array
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]


