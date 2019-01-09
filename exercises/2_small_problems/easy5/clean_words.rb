ALPHABET = %w(Q W F P G J L U Y : I E N H D T S R A Z X C V B K M q w f p g j l u y ; i e n h d t s r a z x c v b k m)

def cleanup(string)
  string.gsub(/[^A-za-z]+/, ' ').squeeze(' ')
end

def cleanup2(string)
  split_string = string.chars
  new_string = ""
  split_string.each do |character|
    if ALPHABET.include?(character)
      new_string << character
    else
      new_string << ' '
    end
  end
  new_string.squeeze(' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '
puts cleanup2("---what's my +*& line?") == ' what s my line '


