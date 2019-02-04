def multiply_list(array1, array2)
  new_array = []
  array1.size.times do |idx|
    new_array << array1[idx] * array2[idx]
  end
  new_array
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# further exploration

def multiply_list_with_zip(array1, array2)
  total = []
  array1.zip(array2) {|x, y| total << x * y}
  total
end

puts multiply_list_with_zip([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# refactored version

def multiply_list_tersely(array1, array2)
  array1.zip(array2).map { |x,y| x * y }
end

puts multiply_list_tersely([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
