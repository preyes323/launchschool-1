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
ROUNDS = 5

def prompt(message)
  puts "=> #{message}"
end

def player_won?(first, second)
  WINNING_CHOICES[first].include?(second)
end

def computer_won?(first, second)
  WINNING_CHOICES[first].include?(second)
end

def return_results(user_choice, computer_choice)
  if player_won?(user_choice, computer_choice)
    "You won!"
  elsif computer_won?(computer_choice, user_choice)
    "Computer won!"
  else
    "It's a tie!"
  end
end

results = { 'player' => 0,
            'computer' => 0 }
round_number = 1

prompt("Welcome to the game!")
prompt("Today we're playing rock, paper, scissors, lizard, spock.")
prompt("You need #{ROUNDS} wins of individual games to be the overall winner.")

until results['player'] == ROUNDS || results ['computer'] == ROUNDS
  choice = nil
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt("You can use an abbreviated form as well. i.e.:")
    ALTERNATIVE_CHOICES.each { |key, value| puts "Type #{key} for #{value}" }
    choice = gets.chomp.downcase
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
  system('clear') || system('cls')
  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  prompt(return_results(choice, computer_choice))
  results['player'] += 1 if player_won?(choice, computer_choice)
  results['computer'] += 1 if computer_won?(computer_choice, choice)
  puts "-------------------------"
  prompt("Current score (round number #{round_number}) --->")
  puts "Player: #{results['player']}"
  puts "Computer: #{results['computer']}"
  puts "-------------------------"
  round_number += 1
end

prompt("Thank you for playing. Good bye!")
