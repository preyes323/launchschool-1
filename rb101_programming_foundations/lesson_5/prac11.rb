arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_array = []
arr.each do |item|
  new_array << item.select { |num| num % 3 == 0 }
end

p new_array
