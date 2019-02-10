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

def show_cards(array, player)
  cards = []
  if player == "p"
    array.each do |sub_array|
      cards << CARDS_NAMES[sub_array.first]
    end
  elsif player == "d"
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

# gameplay starts here

loop do
  player_cards = []
  dealer_cards = []
  game_deck = initialize_deck
  initial_deal(game_deck, player_cards, dealer_cards)
  current_player = ""
  system('cls') || system('clear')
  loop do
    prompt "Which user to start? (player(p) or dealer(d) or random(r))?"
    current_player = gets.chomp
    current_player = ["p", "d"].sample if current_player.downcase == "r"
    break if ["p", "d"].include?(current_player.downcase)
  end
  
  system('cls') || system('clear')
  answer = nil
  loop do
    prompt "Player: #{show_cards(player_cards, "p")}"
    puts "Player total: #{total(player_cards)}"
    prompt "Dealer: #{show_cards(dealer_cards, "d")}"
    puts "Dealer total: #{total(dealer_cards)}"
    prompt "hit or stay?"
    answer = gets.chomp
    deal_cards(game_deck, player_cards, 1) if answer == "hit"
    break if answer == 'stay' || busted?(player_cards)
  end

  if busted?(player_cards)
    prompt "Player busted out! Dealer wins!"
    prompt "Do you want to play again? (y or n)"
    end_answer = gets.chomp
    break if end_answer == "n"
  else
    prompt "You chose to stay!"
  end

  loop do
    prompt "Player: #{show_cards(player_cards, "p")}"
    puts "Player total: #{total(player_cards)}"
    prompt "Dealer: #{show_cards(dealer_cards, "d")}"
    puts "Dealer total: #{total(dealer_cards)}"
    deal_cards(game_deck, dealer_cards, 1) if total(dealer_cards) <= 17
    break if busted?(dealer_cards)
  end

  if busted?(dealer_cards)
    prompt "Dealer busted out! Player wins!"
    prompt "Do you want to play again? (y or n)"
    end_answer = gets.chomp
    break if end_answer == "n"
  else
    prompt "Dealer chose to stay!"
  end
end

prompt "Thanks for playing Twenty-One!"
