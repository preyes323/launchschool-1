def running_total(array)
  return [] if array == []
  total = 0
  array.each_with_object([]) do |number, final|
    total += number
    final << total
  end
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
