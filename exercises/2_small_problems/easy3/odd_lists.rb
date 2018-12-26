def oddities(array)
  count = 0
  final_array = []
  array.each do |item|
    final_array << item if count.even?
    count +=1
  end
  final_array
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
