def sequence(num1, num2)
  array = []
  num1.times do |index|
    array << (index+1) * num2
  end
  array
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []
