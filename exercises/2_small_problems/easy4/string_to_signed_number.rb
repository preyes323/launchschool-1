DIGITS = { "1" => 1,
           "2" => 2,
           "3" => 3,
           "4" => 4,
           "5" => 5,
           "6" => 6,
           "7" => 7,
           "8" => 8,
           "9" => 9,
           "0" => 0 }

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  total = 0
  digits.each do |number|
    total = total * 10 + number
  end
  total
end

def string_to_signed_integer(string)
  if string[0] == '-'
    string = string[1..string.size]
    0 - string_to_integer(string)
  elsif string[0] == '+'
    string = string[1..string.size]
    string_to_integer(string)
  else
    string_to_integer(string)
  end
end



puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
