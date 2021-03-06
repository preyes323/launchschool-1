INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"
WINNING_LINES = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [1, 4, 7],
  [2, 5, 8],
  [3, 6, 9],
  [1, 5, 9],
  [3, 5, 7]
]

ALMOST_MOVES = [
  [1, 2, 3],
  [2, 3, 1],
  [4, 5, 6],
  [5, 6, 4],
  [7, 8, 9],
  [8, 9, 7],
  [1, 4, 7],
  [2, 5, 8],
  [3, 6, 9],
  [4, 7, 1],
  [5, 8, 2],
  [6, 9, 3],
  [7, 5, 3],
  [3, 5, 7],
  [1, 5, 9],
  [5, 9, 1]
]

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize, Metrics/MethodLength
def display_board(brd, score)
  system("cls") || system("clear")
  puts "You're an #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts "Score: Player = #{score[:player]}. Computer = #{score[:computer]}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize, Metrics/MethodLength

def initialize_board
  (1..9).each_with_object({}) do |num, new_board|
    new_board[num] = INITIAL_MARKER
  end
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(array, divider=",", word="or")
  string = ""
  initial_numbers = array.slice(0..-2)
  last_number = array.last
  initial_numbers.each do |num|
    string << "#{num}#{divider} "
  end
  string << "#{word} #{last_number}"
end

def place_piece!(brd, current_player)
  if current_player == "p"
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def alternate_player(current_player)
  case current_player
  when "c" then "p"
  when "p" then "c"
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp
    next if square.to_f != square.to_i
    break if empty_squares(brd).include?(square.to_i)
    prompt "Sorry that's not a valid choice"
  end
  brd[square.to_i] = PLAYER_MARKER
end

def immediate_threat_location(brd)
  ALMOST_MOVES.each do |line|
    if brd.values_at(*line) == ["X", "X", " "]
      return line[2]
    end
  end
  nil
end

def offensive_opportunity_locator(brd)
  ALMOST_MOVES.each do |line|
    if brd.values_at(*line) == ["O", "O", " "]
      return line[2]
    end
  end
  nil
end

def computer_places_piece!(brd)
  if !offensive_opportunity_locator(brd).nil?
    brd[offensive_opportunity_locator(brd)] = COMPUTER_MARKER
  elsif !immediate_threat_location(brd).nil?
    brd[immediate_threat_location(brd)] = COMPUTER_MARKER
  elsif brd[5] == INITIAL_MARKER
    brd[5] = COMPUTER_MARKER
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def update_score(brd, score)
  if detect_winner(brd) == "Player"
    score[:player] += 1
  elsif detect_winner(brd) == "Computer"
    score[:computer] += 1
  end
end

def tournament_not_won?(score)
  score[:player] != 5 && score[:computer] != 5
end

def tournament_winner?(score)
  if score[:player] == 5
    "Player"
  elsif score[:computer] == 5
    "Computer"
  end
end

def reset_score(score)
  score[:player] = 0
  score[:computer] = 0
end

current_score = { player: 0, computer: 0 }
current_player = ""
loop do
  prompt "Which user to start? (player(p) or computer(c) or random(r))?"
  current_player = gets.chomp
  current_player = ["p", "c"].sample if current_player.downcase == "r"
  break if ["p", "c"].include?(current_player.downcase)
end

loop do
  while tournament_not_won?(current_score)
    board = initialize_board

    loop do
      display_board(board, current_score)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      update_score(board, current_score)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board, current_score)
    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
    else
      prompt "It's a tie!"
    end
    if tournament_not_won?(current_score)
      prompt "Starting new game in 3..."
      Kernel.sleep(1)
      prompt "Starting new game in 2..."
      Kernel.sleep(1)
      prompt "Starting new game in 1..."
      Kernel.sleep(1)
    else
      prompt "#{tournament_winner?(current_score)} won the tournament!"
    end
  end

  answer = ""
  loop do
    prompt "Play again? (y or n)"
    answer = gets.chomp
    break if ["y", "n"].include?(answer.downcase)
  end
  break unless answer.downcase == "y"
  reset_score(current_score)
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
