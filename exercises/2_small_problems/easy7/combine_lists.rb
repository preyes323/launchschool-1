def interleave(array1, array2)
  new_array = []
  counter = 0
  while counter != array1.size
    new_array << array1[counter]
    new_array << array2[counter]
    counter += 1
  end
  new_array
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

def interleave_with_zip(array1, array2)
  array1.zip(array2).flatten
end

puts interleave_with_zip([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

