arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.each_with_object([]) do |item, array|
  array << item.select { |num| num % 3 == 0 }
end

