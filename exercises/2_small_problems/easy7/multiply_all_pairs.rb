def multiply_all_pairs(array1, array2)
  all_pairs = array1.product(array2)
  final_array = all_pairs.each_with_object([]) do |pair, array|
    array << pair.reduce(:*)
  end
  final_array.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2])
puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
