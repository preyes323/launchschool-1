def halvsies(array)
  if array.size%2 == 0
    array1 = array[0, (array.size/2)]
    array2 = array[array.size/2, array.size]
    return [array1, array2]
  else
    array1 = array[0, (array.size/2)+1]
    array2 = array[array.size/2+1, array.size]
    return [array1, array2]
  end
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]

