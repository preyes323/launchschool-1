def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

int1 = nil
int2 = nil

loop do
  loop do
    puts ">> Please enter a positive or negative integer:"
    int1 = gets.chomp
    break if valid_number?(int1)
    puts "Invalid input. Only non-zero integers are allowed."
  end
  loop do
    puts ">> Please enter a positive or negative integer:"
    int2 = gets.chomp
    break if valid_number?(int2)
    puts "Invalid input. Only non-zero integers are allowed."
  end
  if int1.to_i > 0 && int2.to_i < 0
    puts "#{int1} + #{int2} = #{int1.to_i+int2.to_i}"
    break
  elsif int1.to_i < 0 && int2.to_i > 0
    puts "#{int1} + #{int2} = #{int1.to_i+int2.to_i}"
    break
  else
    puts "Sorry. One integer must be positive, one must be negative."
    puts "Please start over."
  end
end
