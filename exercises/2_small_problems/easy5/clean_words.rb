def cleanup(string)
  string.gsub(/[^A-za-z]+/, ' ').squeeze(' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '

