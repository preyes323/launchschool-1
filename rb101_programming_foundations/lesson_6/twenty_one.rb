CARDS = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
SUITS = %w(H C D S)

def initialize_deck
  SUITS.each_with_object([]) do |suit, array|
    CARDS.each do |card|
      array << [card, suit]
    end
  end
end

def prompt(string)
  puts "=> #{string}"
end

# gameplay starts here

loop do
  deck = initialize_deck
  p deck
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  break if answer == "n"
end

prompt "Thanks for playing Twenty-One!"
