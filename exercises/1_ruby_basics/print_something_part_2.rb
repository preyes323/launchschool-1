puts ">> Do you want to print?"
answer = gets.chomp.downcase
while answer != "y" || answer != "n"
  case answer
  when "y"
    puts "something"
    break
  when "n"
    puts ""
    break
  else
    puts "Invalid input! Please enter y or n"
    oputs ">> Do you want to print?"
    answer = gets.chomp.downcase
  end
end
