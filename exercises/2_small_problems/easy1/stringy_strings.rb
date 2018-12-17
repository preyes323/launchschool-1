def stringy(int)
  counter = 0
  return_value = []

  int.times do |number|
    if counter.even?
      return_value << '1'
      counter += 1
    else
      return_value << '0'
      counter += 1
    end
  end
  return_value.join('')
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
