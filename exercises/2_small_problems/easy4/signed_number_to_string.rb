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
  chars = integer.abs.digits.reverse
  string = ''
  chars.each do |digit|
    string += DIGITS[digit]
  end
  string
end

def signed_integer_to_string(int)
  string = integer_to_string(int)
  case
  when int == 0 then string
  when int > 0 then string.prepend("+")
  when int < 0 then string.prepend("-")
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
