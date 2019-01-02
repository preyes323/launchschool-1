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

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'
