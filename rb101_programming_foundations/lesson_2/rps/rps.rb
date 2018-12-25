VALID_CHOICES = ['rock', 'paper', 'scissors', 'spock', 'lizard']
ALTERNATIVE_CHOICES = {'r' => 'rock',
                       'p' => 'paper',
                       'sc' => 'scissors',
                       'sp' => 'spock',
                       'l' => 'lizard'}

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'rock')
end

def display_results(user_choice, computer_choice)
  if win?(user_choice, computer_choice)
    prompt("You won!")
  elsif win?(computer_choice, user_choice)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = nil
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt("You can use an abbreviated form as well.")
    ALTERNATIVE_CHOICES.each {|key, value|
      puts "Use #{key} for #{value}"}
    choice = gets.chomp
    if VALID_CHOICES.include?(choice) ||
       VALID_CHOICES.include?(ALTERNATIVE_CHOICES[choice])
      break
    else
      prompt("That's not a valid choice.")
      prompt("Please choose one of the given options.")
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
