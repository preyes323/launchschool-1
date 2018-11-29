def number_search(number)
  if number < 0
    puts "stop trying to cheat the system!"
  elsif number <= 50
    puts "number is between 0 and 50"
  elsif number <= 100
    puts "number is between 51 and 100"
  else
    puts "number is above 100"
  end
end

puts "give me a number please"
value = gets.chomp.to_i
number_search(value)
