def sequence(num)
  array = []
  1.upto(num) do |num|
    array << num
  end
  array
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
