USERNAME="rubinius"
PASSWORD="hello123"
loop do
  puts ">> Please enter your username:"
  user_try = gets.chomp
  puts ">> Please enter your password:"
  pass_try = gets.chomp
  break if pass_try == PASSWORD && user_try == USERNAME
  puts "Authorization failed!"
end
puts "Welcome!"
