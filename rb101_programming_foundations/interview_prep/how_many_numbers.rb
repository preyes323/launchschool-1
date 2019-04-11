def digits_increase?(num)
  iterator = 0
  num.digits.reverse.each do |digit|
    return false if digit < iterator
    iterator = digit
  end
  true
end

def find_all(n, k)
  max = (10 ** k) - 1
  valid_numbers = []
  (1..max).select { |x| x.digits.size == k && x.digits.sum == n }.each do |option|
    valid_numbers << option if digits_increase?(option)
  end
  return [] if valid_numbers.size == 0
  [valid_numbers.size, valid_numbers.first, valid_numbers.last]
end

puts find_all(10, 3) == [8, 118, 334]
