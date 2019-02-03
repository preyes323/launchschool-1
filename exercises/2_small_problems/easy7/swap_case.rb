def swapcase(string)
  string.chars.map do |char|
    if char.match(/[A-Z]/)
      char.downcase
    elsif char.match(/[a-z]/)
      char.upcase
    else
      char
    end
  end.join("")
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
