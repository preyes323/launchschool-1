def running_total(array)
  total = 0
  final_array = []
  array.each do |number|
    total += number
    final_array.push(total)
  end
  final_array
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

# a different way to solve this problem with map
def running_total2(array)
  sum = 0
  array.map { |number| sum += number }
end
