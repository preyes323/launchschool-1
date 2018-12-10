PASSWORD="hello123"
loop do
  puts ">> Please enter your password:"
  answer = gets.chomp
  break if answer == PASSWORD
  puts "Invalid password!"
end
puts "Welcome!"
