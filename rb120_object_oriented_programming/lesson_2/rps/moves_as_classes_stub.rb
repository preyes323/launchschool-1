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
