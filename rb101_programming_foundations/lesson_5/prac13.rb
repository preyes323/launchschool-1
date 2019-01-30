arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

a = arr.sort_by do |subarr|
  subarr.select { |item| item % 2 != 0 }
end

p a
