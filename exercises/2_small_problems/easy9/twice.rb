def double?(num)
  string_num = num.to_s
  halfway = string_num.size/2
  first_half = string_num[0,halfway]
  second_half = string_num[halfway, string_num.size]
  if first_half == second_half
    true
  else
    false
  end
end

def twice(num)
  double?(num) ? num : num * 2
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
