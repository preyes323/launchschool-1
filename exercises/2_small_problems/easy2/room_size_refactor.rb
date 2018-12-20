SQFT_TO_SQINCHES = 144
SQFT_TO_SQCENT = 929.0304

puts "Enter the length of the room in feet:"
length = gets.chomp.to_i
puts "Enter the width of the room in feet:"
width = gets.chomp.to_i
area = length * width

puts "The area of the room is #{area} square feet (#{area*SQFT_TO_SQINCHES} square inches, #{area*SQFT_TO_SQCENT} square centimetres)."
