DIGITS = { 1 => "1",
           2 => "2",
           3 => "3",
           4 => "4",
           5 => "5",
           6 => "6",
           7 => "7",
           8 => "8",
           9 => "9",
           0 => "0" }

def integer_to_string(integer)
  chars = integer.digits.reverse
  string = ''
  chars.each do |digit|
    string += DIGITS[digit]
  end
  string
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
