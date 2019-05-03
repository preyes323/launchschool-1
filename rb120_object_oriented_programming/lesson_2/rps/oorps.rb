class Move
  VALUES = %w(rock paper scissors lizard spock)
  
  def initialize(value)
    @value = value
  end

  def scissors?
    @value == 'scissors'
  end

  def spock?
    @value == "spock"
  end

  def lizard?
    @value == "lizard"
  end

  def rock?
    @value == 'rock'
  end

  def paper?
    @value == 'paper'
  end

  def >(other_move)
    (rock? && other_move.scissors?) ||
      (paper? && other_move.rock?) ||
      (scissors? && other_move.paper?) ||
      (rock? && other_move.lizard?) ||
      (paper? && other_move.spock?) ||
      (scissors? && other_move.lizard?) ||
      (lizard? && other_move.spock?) ||
      (lizard? && other_move.paper?) ||
      (spock? && other_move.scissors?) ||
      (spock? && other_move.rock?)
  end

  def <(other_move)
    (rock? && other_move.paper?) ||
      (paper? && other_move.scissors?) ||
      (scissors? && other_move.rock?) ||
      (rock? && other_move.spock?) ||
      (paper? && other_move.lizard?) ||
      (scissors? && other_move.spock?) ||
      (lizard? && other_move.rock?) ||
      (lizard? && other_move.scissors?) ||
      (spock? && other_move.paper?) ||
      (spock? && other_move.lizard?)
  end

  def tie(other_value)
    # @value == other_value
  end
  
  def to_s
    @value
  end
end
=begin
class Rock < Move
  def beats?(other_move)
    @value == "rock" && other_move == "scissors" ||
      @value == "rock" && other_move == "lizard"
  end
end

class Paper < Move
  def beats?(other_move)
    @value == "paper" && other_move == "rock" ||
      @value == "paper" && other_move == "spock"
  end
end

class Scissors < Move
  def beats?(other_move)
    @value == "scissors" && other_move == "paper" ||
      @value == "scissors" && other_move == "lizard"
  end
end

class Spock < Move
  def beats?(other_move)
    @value == "spock" && other_move == "scissors" ||
      @value == "spock" && other_move == "rock"
  end
end

class Lizard < Move
  def beats?(other_move)
    @value == "lizard" && other_move == "spock" ||
      @value == "lizard" && other_move == "paper"
  end
end
=end

class Player
  attr_accessor :move, :name, :score

  def initialize
    set_name
    @score = 0
  end
end

class Human < Player
  def set_name
    n = ""
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value."
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "-------------------------------------------------"
      puts "Please choose rock, paper, scissors, spock or lizard:"
      choice = gets.chomp.downcase
      break if Move::VALUES.include?(choice)
      puts "Sorry, invalid choice."
    end
    self.move = choice
  end
end

class Computer < Player
  def set_name
    self.name = ['R2D2', 'Hal', "Chappie", "Sonny", "Number 5"].sample
  end

  def choose
    self.move = Move::VALUES.sample
  end
end

# Game Orchestration Engine
class RPSGame
  WINNING_SCORE = 5

  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors, Lizard, Spock!"
    puts "You need #{WINNING_SCORE} wins of to be the overall winner."
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors, Lizard, Spock. Good bye!"
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
  end

  def display_winner
    if human.move > computer.move
      human.score += 1
      "#{human.name} won!"
    elsif human.move == computer.move
      "It's a tie!"
    else
      computer.score += 1
      "#{computer.name} won!"
    end
  end

  def display_score
    puts "Current score: #{human.score} (#{human.name}) // #{computer.score} (#{computer.name})"
  end

  def display_overall_winner
    puts "-------------------------------------------------"
    if human.score == 5
      puts "You won! Well done, #{human.name}!"
    elsif computer.score == 5
      puts "#{computer.name} won! Better luck next time, #{human.name}!"
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include?(answer.downcase)
      puts "Sorry, must be y or n."
    end
    return true if answer.downcase == 'y'
    false
  end

  def play
    loop do
      until human.score == WINNING_SCORE || computer.score == WINNING_SCORE
        human.choose
        computer.choose
        display_moves
        puts display_winner
        display_score
      end
      display_overall_winner
      break unless play_again?
    end
  end

  def setup
    system('clear') || system('cls')
    display_welcome_message
    play
    display_goodbye_message
  end
end

RPSGame.new.setup
