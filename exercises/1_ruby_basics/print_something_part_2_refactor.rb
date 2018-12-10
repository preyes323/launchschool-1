choice = nil

loop do
  puts ">> Do you want me to print something? (y/n)"
  choice = gets.chomp.downcase
  break if choice == "n"
  if choice == "y"
    puts "something"
    break
  else
    puts "Invalid input! Please enter y or n"
  end
end
