def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

int1 = nil
int2 = nil

loop do
  puts ">> Please enter a positive or negative integer:"
  int1 = gets.chomp.to_i
  puts ">> Please enter a positive or negative integer:"
  int2 = gets.chomp.to_i
  if int1 > 0 && int2 < 0
    puts "#{int1} + #{int2} = #{int1+int2}"
    break
  elsif int1 < 0 && int2 > 0
    puts "#{int1} + #{int2} = #{int1+int2}"
    break
  else
    puts "Sorry. One integer must be positive, one must be negative."
    puts "Please start over."
  end
end
