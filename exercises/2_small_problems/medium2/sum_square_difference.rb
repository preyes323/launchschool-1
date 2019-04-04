def sum_square_difference(int)
  second_count = 0
  1.upto(int) {|num| second_count += num ** 2}
  ((1..int).sum)**2 - second_count
end

puts sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150
