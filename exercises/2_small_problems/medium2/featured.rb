def is_featured?(int)
  digits = int.digits
  unique_digits = digits.uniq
  return false if int.even?
  return false if int % 7 != 0
  return false if digits != unique_digits
  true
end

def featured(int)
  current = int + 1
  loop do
    return current if is_featured?(current)
    current += 1
    break if current == 9999999999
  end
  "There is no possible number that fulfills those requirements"
end


puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987
puts featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
