require 'pry'

CARDS = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
SUITS = %w(H C D S)
CARDS_NAMES = { "A" => "Ace",
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

def list_cards(array)
  cards = []
  array.each do |sub_array|
    cards << CARDS_NAMES[sub_array.first]
  end
  joinor(cards)
end

def joinor(array, divider=",", word="and")
  string = ""
  initial_numbers = array.slice(0..-2)
  last_number = array.last
  initial_numbers.each do |num|
    string << "#{num}#{divider} "
  end
  string << "#{word} #{last_number}"
end

# gameplay starts here

loop do
  player_cards = []
  dealer_cards = []
  game_deck = initialize_deck
  initial_deal(game_deck, player_cards, dealer_cards)

  system('cls') || system('clear')
  prompt "Player: #{list_cards(player_cards)}"
  prompt "Dealer: #{list_cards(dealer_cards)}"

  prompt "Do you want to play again? (y or n)"
 answer = gets.chomp
  break if answer == "n"
end

prompt "Thanks for playing Twenty-One!"
