def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil

loop do
  puts ">> Please enter the numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts ">> Invalid input. Only integers are allowed."
end

loop do
  puts ">> Please enter the denominator:"
  denominator = gets.chomp
  if denominator.to_i == 0
    puts ">> Invalid input. A denominator of 0 is not allowed."
    next
  elsif valid_number?(denominator)
    break
  end
end
    
puts "#{numerator} / #{denominator} is #{numerator.to_i / denominator.to_i}"
