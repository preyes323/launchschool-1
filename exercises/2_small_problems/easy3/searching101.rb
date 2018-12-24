numbers = []

puts "==> Enter the 1st number:"
numbers << gets.chomp.to_i
puts "==> Enter the 2nd number:"
numbers << gets.chomp.to_i
puts "==> Enter the 3rd number:"
numbers << gets.chomp.to_i
puts "==> Enter the 4th number:"
numbers << gets.chomp.to_i
puts "==> Enter the 5th number:"
numbers << gets.chomp.to_i
puts "==> Enter the last number:"
int = gets.chomp.to_i

numbers.include?(int) ?
  puts("The number #{int} appears in #{numbers}.") :
  puts("The number #{int} does not appear in #{numbers}.")
