require 'pry'

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
    sum -= 10 if sum > 21
  end

  sum
end

def detect_winner(cards)
  total(cards) == 21
end

def busted?(cards)
  total(cards) > 21
end

def alternate_player(current_player)
  case current_player
  when "c" then "p"
  when "p" then "c"
  end
end

def show_final_hand
  prompt 'Final player hand was: #{show_cards(player_cards, "player")} (#{total(player_cards)})'
  prompt 'Final dealer hand was: #{show_cards(dealer_cards)} (#{total(dealer_cards)})'
end

# gameplay starts here

# rubocop:disable Metrics/LineLength
loop do
  prompt "Welcome to Twenty-One!"
  player_cards = []
  dealer_cards = []
  game_deck = initialize_deck
  initial_deal(game_deck, player_cards, dealer_cards)
  system('cls') || system('clear')
  answer = nil
  loop do
    prompt 'Player: #{show_cards(player_cards, "player")}'
    puts 'Player total: #{total(player_cards)}'
    prompt 'Dealer: #{show_cards(dealer_cards, "dealer")}'
    puts 'Dealer total: #{total(dealer_cards)}'
    prompt "hit or stay?"
    answer = gets.chomp
    deal_cards(game_deck, player_cards, 1) if answer == "hit"
    break if answer == 'stay' || busted?(player_cards) || detect_winner(player_cards)
  end

  if busted?(player_cards)
    puts "----------------------------"
    prompt "Player busted out! Dealer wins!"
    show_final_hand
    prompt "Do you want to play again? (y or n)"
    end_answer = gets.chomp
    break if end_answer == "n"
  elsif detect_winner(player_cards)
    puts "----------------------------"
    prompt "Player won with 21 exactly!"
    show_final_hand
    prompt "Do you want to play again? (y or n)"
    end_answer = gets.chomp
    break if end_answer == "n"
  else
    prompt "You chose to stay!"
  end

  if busted?(player_cards) == false && detect_winner(player_cards) == false
    while total(dealer_cards) <= 17
      prompt 'Player: #{show_cards(player_cards, "player")}'
      puts 'Player total: #{total(player_cards)}'
      prompt 'Dealer: #{show_cards(dealer_cards, "dealer")}'
      puts 'Dealer total: #{total(dealer_cards)}'
      deal_cards(game_deck, dealer_cards, 1) if total(dealer_cards) <= 17
      break if busted?(dealer_cards) || detect_winner(dealer_cards)
    end

    if busted?(dealer_cards)
      puts "----------------------------"
      prompt "Dealer busted out! Player wins!"
      show_final_hand
      prompt "Do you want to play again? (y or n)"
      end_answer = gets.chomp
      break if end_answer == "n"
    elsif detect_winner(dealer_cards)
      puts "----------------------------"
      prompt "Dealer won with 21 exactly!"
      show_final_hand
      prompt "Do you want to play again? (y or n)"
      end_answer = gets.chomp
      break if end_answer == "n"
    else
      puts "----------------------------"
      total(player_cards) > total(dealer_cards) ? prompt("Player won!") : prompt("Dealer won!")
      show_final_hand
      prompt "Do you want to play again? (y or n)"
      end_answer = gets.chomp
      break if end_answer == "n"
    end
  end
end

prompt "Thanks for playing Twenty-One! Good bye!"
