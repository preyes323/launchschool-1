def stringy(int,starting_bit = 1)
  return_value = []

  int.times do |index|
    if starting_bit == 1
      number = index.even? ? 1 : 0
      return_value << number
    else
      number = index.even? ? 0 : 1
      return_value << number
    end
  end
  return_value.join('')
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(7, 0)
puts stringy(7, 1)
