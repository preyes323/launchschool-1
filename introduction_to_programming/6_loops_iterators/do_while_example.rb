loop do
  puts "This is the information line. Do you want to continue?"
  answer = gets.chomp
  if answer != "Y"
    break
  end
end
