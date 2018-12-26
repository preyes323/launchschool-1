def oddities3(array)
  index = 0
  final_array = []
  for i in array
    final_array << i if index.even?
    index +=1
  end
  final_array
end

def oddities4(array)
  index = 0
  final_array = []
  while index < array.size
    final_array << array[index] if index.even?
    index += 1
  end
  final_array
end

def oddities2(array)
  array.select {|item| array.index(item).even? }
end

def evenities2(array)
  array.select {|item| array.index(item).odd? }
end

def oddities(array)
  count = 0
  final_array = []
  array.each do |item|
    final_array << item if count.even?
    count +=1
  end
  final_array
end

def evenities(array)
  count = 0
  final_array = []
  array.each do |item|
    final_array << item if count.odd?
    count +=1
  end
  final_array
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

puts evenities([1,2,3,4,5]) == [2, 4]

puts oddities2([2,3,4,5,6]) == [2,4,6]
puts oddities3([2,3,4,5,6]) == [2,4,6]
puts oddities4([2,3,4,5,6]) == [2,4,6]
