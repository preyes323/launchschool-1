require 'pry'

class Move
  INPUT_VALUES = %w(ro pa sc li sp)
  INPUT_TO_FULL_VALUES = { 'ro' => "rock",
                           'pa' => 'paper',
                           'sc' => 'scissors',
                           'li' => 'lizard',
                           'sp' => 'spock' }

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
      (rock? && other_move.lizard?) ||
      (paper? && other_move.rock?) ||
      (paper? && other_move.spock?) ||
      (scissors? && other_move.lizard?) ||
      (scissors? && other_move.paper?) ||
      (lizard? && other_move.spock?) ||
      (lizard? && other_move.paper?) ||
      (spock? && other_move.scissors?) ||
      (spock? && other_move.rock?)
  end

  def tie(other_value)
    # @value == other_value
  end

  def to_s
    @value
  end
end

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
      break unless n.empty? || n.start_with?(" ")
      puts "Sorry, must enter a value."
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "-------------------------------------------------"
      puts "Please choose (ro)ck, (pa)per, (sc)issors, (sp)ock or (li)zard."
      puts "Type the first two letters of your choice:"
      choice = Move::INPUT_TO_FULL_VALUES[gets.chomp.downcase]
      break if Move::INPUT_TO_FULL_VALUES.values.include?(choice)
      puts "Sorry, invalid choice."
    end
    self.move = choice
  end
end

class Computer < Player
  range = 1..(Move::INPUT_VALUES.size)
  INITIAL_WEIGHTING = range.each_with_object([]) do |_, arr|
    arr << (100.0 / Move::INPUT_VALUES.size)
  end

  def initialize
    super
    @weighting = INITIAL_WEIGHTING
  end

  def set_name
    self.name = ['R2D2', 'Hal', "Chappie", "Sonny", "Number 5"].sample
  end

  def evaluate_and_choose(game_history)
    proportion = process_history_data(game_history)
    update_weighting(proportion)
    self.move = weighted_array.sample
  end

  private

  def weighted_array
    @weighted_array = []
    Move::INPUT_TO_FULL_VALUES.values.each_with_index do |val, idx|
      (@weighting[idx]).to_i.times do
        @weighted_array << val
      end
    end
    @weighted_array
  end

  def update_weighting(proportion)
    return if proportion < 0.6 || @weighting[0] > 4
    @weighting[0] -= 5
    @weighting[1] += 1.25
    @weighting[2] += 1.25
    @weighting[3] += 1.25
    @weighting[4] += 1.25
  end

  def process_history_data(history)
    computer_selects_rock = history.select do |round|
      round[1] == "rock"
    end
    human_wins_when_computer_rock, = computer_selects_rock.partition do |round|
      round[2] == "human"
    end
    (human_wins_when_computer_rock.size.to_f / computer_selects_rock.size)
  end
end

# Game Orchestration Engine
class RPSGame
  WINNING_SCORE = 5

  attr_accessor :human, :computer, :game_history, :weighting

  def initialize
    @human = Human.new
    @computer = Computer.new
    @game_history = []
    @round_winner = ""
    @computer_selects_rock = []
    @human_wins_when_computer_rock = []
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

  def calculate_winner
    human_move = human.move
    computer_move = computer.move
    if human_move > computer_move
      human.score += 1
      @game_history << [human_move, computer_move, "human"]
      @round_winner = "human"
    elsif human.move == computer.move
      @game_history << [human_move, computer_move, "tie"]
      @round_winner = "tie"
    else
      computer.score += 1
      @game_history << [human_move, computer_move, "computer"]
      @round_winner = "computer"
    end
  end

  def display_winner
    case @round_winner
    when "human" then puts "#{human.name} won!"
    when "computer" then puts "#{computer.name} won!"
    when "tie" then puts "It's a tie!"
    end
  end

  def display_score
    puts "Current score: #{human.score} (#{human.name})"\
         "// #{computer.score} (#{computer.name})"
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
    return false if answer.downcase == "n"
    system('clear') || system('cls')
    true
  end

  def play
    system('clear') || system('cls')
    display_welcome_message
    loop do
      until human.score == WINNING_SCORE || computer.score == WINNING_SCORE
        human.choose
        computer.evaluate_and_choose(@game_history)
        display_moves
        calculate_winner
        display_winner
        display_score
      end
      display_overall_winner
      human.score = 0
      computer.score = 0
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play
