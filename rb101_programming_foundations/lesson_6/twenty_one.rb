CARDS = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
SUITS = %w(H C D S)
CARDS_NAMES = {
  "A" => "Ace",
  "2" => "2",
  "3" => "3",
  "4" => "4",
  "5" => "5",
  "6" => "6",
  "7" => "7",
  "8" => "8",
  "9" => "9",
  "10" => "10",
  "J" => "Jack",
  "Q" => "Queen",
  "K" => "King"
}
GAME_TARGET = 21

def prompt(string)
  puts "=> #{string}"
end

def initialize_deck
  SUITS.each_with_object([]) do |suit, array|
    CARDS.each do |card|
      array << [card, suit]
    end
  end
end

def deal_cards(deck, recipient_deck, number)
  number.times do
    card = deck.sample
    recipient_deck << card
    deck.delete(card)
  end
end

def initial_deal(deck, player_deck, dealer_deck)
  deal_cards(deck, player_deck, 2)
  deal_cards(deck, dealer_deck, 2)
end

def show_cards(array, player="player")
  cards = []
  if player == "player"
    array.each do |sub_array|
      cards << CARDS_NAMES[sub_array.first]
    end
  elsif player == "dealer"
    cards << CARDS_NAMES[array[0][0]]
    remaining_card_count = array.size - 1
    remaining_card_count.times do
      cards << "unknown card"
    end
  end
  joinor(cards)
end

def joinor(arr, delimiter=', ', word='and')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def total(cards)
  values = cards.map { |card| card[0] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > GAME_TARGET
  end

  sum
end

def detect_winner(cards)
  total(cards) == GAME_TARGET
end

def busted?(cards)
  total(cards) > GAME_TARGET
end

def alternate_player(current_player)
  case current_player
  when "c" then "p"
  when "p" then "c"
  end
end

def wait_between_rounds
  prompt "Starting new game in 3..."
  Kernel.sleep(1)
  prompt "Starting new game in 2..."
  Kernel.sleep(1)
  prompt "Starting new game in 1..."
  Kernel.sleep(1)
end

def tournament_winner?(score)
  score[:player] == 5 || score[:dealer] == 5
end

def dealer_gameplay(dealer_total, player_total, player_cards, dealer_cards, game_deck, tournament_score)
  while dealer_total <= GAME_TARGET - 4
    prompt "Player: #{show_cards(player_cards, 'player')}"
    puts "Player total: #{total(player_cards)}"
    prompt "Dealer: #{show_cards(dealer_cards, 'dealer')}"
    puts "Dealer total: #{dealer_total}"
    deal_cards(game_deck, dealer_cards, 1) if total(dealer_cards) <= GAME_TARGET - 4
    dealer_total = total(dealer_cards)
    break if busted?(dealer_cards) || detect_winner(dealer_cards)
  end

  if busted?(dealer_cards)
    tournament_score[:player] += 1
    puts "----------------------------"
    prompt "Dealer busted out! Player wins!"
    prompt "Final player hand was: #{show_cards(player_cards, 'player')} (#{player_total})"
    prompt "Final dealer hand was: #{show_cards(dealer_cards)} (#{dealer_total})"
  elsif detect_winner(dealer_cards)
    tournament_score[:dealer] += 1
    puts "----------------------------"
    prompt "Dealer won with #{GAME_TARGET} exactly!"
    prompt "Final player hand was: #{show_cards(player_cards, 'player')} (#{player_total})"
    prompt "Final dealer hand was: #{show_cards(dealer_cards)} (#{dealer_total})"
  else
    puts "----------------------------"
    if total(player_cards) > total(dealer_cards)
      tournament_score[:player] += 1
      prompt("Player won!")
    else
      tournament_score[:dealer] += 1
      prompt("Dealer won!")
    end
    prompt "Final player hand was: #{show_cards(player_cards, 'player')} (#{player_total})"
    prompt "Final dealer hand was: #{show_cards(dealer_cards)} (#{dealer_total})"
  end
  wait_between_rounds unless tournament_winner?(tournament_score)
end

# rubocop:disable Metrics/LineLength

# gameplay starts here

tournament_score = { player: 0, dealer: 0 }

unless tournament_score[:player] == 5 || tournament_score[:dealer] == 5
  loop do
    system('cls') || system('clear')
    puts "========================================"
    puts "Welcome to Twenty-One!".center(40)
    puts "========================================"
    puts "Current Tournament Score: P:#{tournament_score[:player]} D:#{tournament_score[:dealer]}".center(40)
    puts "----------------------------------------"
    player_cards = []
    dealer_cards = []
    game_deck = initialize_deck
    initial_deal(game_deck, player_cards, dealer_cards)
    player_total = total(player_cards)
    dealer_total = total(dealer_cards)
    answer = nil
    loop do
      prompt "Player: #{show_cards(player_cards, 'player')}"
      puts "Player total: #{player_total}"
      prompt "Dealer: #{show_cards(dealer_cards, 'dealer')}"
      puts "Dealer total: #{dealer_total}"
      prompt "(h)it or (s)tay?"
      answer = gets.chomp.downcase
      deal_cards(game_deck, player_cards, 1) if answer == "h"
      player_total = total(player_cards)
      break if answer == 's' || busted?(player_cards) || detect_winner(player_cards)
      prompt "Please enter a valid option..." if answer != "h"
    end

    if busted?(player_cards)
      tournament_score[:dealer] += 1
      puts "----------------------------"
      prompt "Player busted out! Dealer wins!"
      prompt "Final player hand was: #{show_cards(player_cards, 'player')} (#{player_total})"
      prompt "Final dealer hand was: #{show_cards(dealer_cards)} (#{dealer_total})"
      wait_between_rounds unless tournament_winner?(tournament_score)
    elsif detect_winner(player_cards)
      tournament_score[:player] += 1
      puts "----------------------------"
      prompt "Player won with #{GAME_TARGET} exactly!"
      prompt "Final player hand was: #{show_cards(player_cards, 'player')} (#{player_total})"
      prompt "Final dealer hand was: #{show_cards(dealer_cards)} (#{dealer_total})"
      wait_between_rounds unless tournament_winner?(tournament_score)
    else
      prompt "You chose to stay!"
    end

    if busted?(player_cards) == false && detect_winner(player_cards) == false
      dealer_gameplay(dealer_total, player_total, player_cards, dealer_cards, game_deck, tournament_score)
    end
    break if tournament_score.values.include?(5)
  end

  loop do
    prompt "----------------------------------------"
    prompt "The tournament is complete!"
    prompt "Do you want to play again? (y or n)"
    outer_answer = gets.chomp.downcase
    if outer_answer == "n"
      break
    elsif outer_answer == "y"
      tournament_score = { player: 0, dealer: 0 }
      break
    else
      prompt "Please choose a valid option."
    end
  end
end

prompt "Thanks for playing Twenty-One! Good bye!"
