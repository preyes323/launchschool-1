PASSWORD="r0b0c0p"
loop do
  puts ">> Please enter your password:"
  answer = gets.chomp
  if answer == PASSWORD
    puts "Welcome!"
    break
  else
    puts ">> Invalid password!"
    next
  end
end
