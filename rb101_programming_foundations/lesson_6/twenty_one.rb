CARDS = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
SUITS = %w(H C D S)

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

# gameplay starts here

loop do
  player_cards = []
  dealer_cards = []
  game_deck = initialize_deck
  initial_deal(game_deck, player_cards, dealer_cards)
  p game_deck.size
  p player_cards
  p dealer_cards
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  break if answer == "n"
end

prompt "Thanks for playing Twenty-One!"
