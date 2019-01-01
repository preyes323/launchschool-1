DIGITS = { "0" => 0,
           "1" => 1,
           "2" => 2,
           "3" => 3,
           "4" => 4,
           "5" => 5,
           "6" => 6,
           "7" => 7,
           "8" => 8,
           "9" => 9,
           "A" => 10,
           "B" => 11,
           "C" => 12,
           "D" => 13,
           "E" => 14,
           "F" => 15 }

def hexadecimal_to_integer(string)
  hex_set = string.chars.map { |char| DIGITS[char.upcase] }
  total = 0
  hex_set.each do |number|
    total = total * 16 + number
  end
  total
end

puts hexadecimal_to_integer('4D9f') == 19871
