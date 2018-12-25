VALID_CHOICES = ['rock', 'paper', 'scissors', 'spock', 'lizard']
ALTERNATIVE_CHOICES = { 'r' => 'rock',
                        'p' => 'paper',
                        'sc' => 'scissors',
                        'sp' => 'spock',
                        'l' => 'lizard' }
WINNING_CHOICES = { 'rock' => ['scissors', 'lizard'],
                    'paper' => ['rock', 'spock'],
                    'scissors' => ['paper', 'lizard'],
                    'lizard' => ['spock', 'paper'],
                    'spock' => ['scissors', 'rock'] }

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  WINNING_CHOICES[first].include?(second)
end

def display_results(user_choice, computer_choice)
  if win?(user_choice, computer_choice)
    "You won!"
  elsif win?(computer_choice, user_choice)
    "Computer won!"
  else
    "It's a tie!"
  end
end

results = { 'player' => 0,
            'computer' => 0 }
round_number = 1

until results['player'] == 5 || results ['computer'] == 5
  choice = nil
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt("You can use an abbreviated form as well. i.e.:")
    ALTERNATIVE_CHOICES.each { |key, value| puts "Type #{key} for #{value}" }
    choice = gets.chomp
    if VALID_CHOICES.include?(choice)
      break
    elsif VALID_CHOICES.include?(ALTERNATIVE_CHOICES[choice])
      choice = ALTERNATIVE_CHOICES[choice]
      break
    else
      prompt("That's not a valid choice.")
      prompt("Please choose one of the given options.")
    end
  end
  computer_choice = VALID_CHOICES.sample
  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  prompt(display_results(choice, computer_choice))
  case display_results(choice, computer_choice)
  when "You won!" then results['player'] += 1
  when "Computer won!" then results['computer'] += 1
  end
  puts "-------------------------"
  prompt("Current score (round number #{round_number}) --->")
  puts "Player: #{results['player']}"
  puts "Computer: #{results['computer']}"
  puts "-------------------------"
  round_number += 1
end

prompt("Thank you for playing. Good bye!")
