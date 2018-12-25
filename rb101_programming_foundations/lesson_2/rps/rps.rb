VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts "=> #{message}"
end

def display_results(user_choice, computer_choice)
  if (user_choice == 'rock' && computer_choice == 'scissors') ||
     (user_choice == 'paper' && computer_choice == 'rock') ||
     (user_choice == 'scissors' && computer_choice == 'paper')
    prompt("You won!")
  elsif (user_choice == 'rock' && computer_choice == 'paper') ||
        (user_choice == 'paper' && computer_choice == 'scissors') ||
        (user_choice == 'scissors' && computer_choice == 'rock')
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end  
end

loop do
  choice = nil
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp
    if VALID_CHOICES.include?(choice) then break
    else prompt("That's not a valid choice. Please choose one of the given options.")
    end
  end
  
  computer_choice = VALID_CHOICES.sample
  
  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)
  
  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase() == "y"
end

prompt("Thank you for playing. Good bye!")
