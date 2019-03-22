def sort_descending(num)
  final = ""
  num.to_s.chars.sort.each do |num|
    final << num
  end
  final.reverse.to_i
end

def kaprekars_constant(num)
  count = 0
  final = nil
  descending = sort_descending(num)
  ascending = descending.to_s.reverse.to_i
  while final != 6174
    final = descending - ascending
    if final.digits.size < 4
      final_str = "0" + final.to_s
      descending = final_str.reverse.to_i
      ascending = final_str.to_i
    else
      descending = sort_descending(final)
      ascending = descending.to_s.reverse.to_i
    end
    count += 1
  end
  count
end

puts kaprekars_constant(2111) == 5
puts kaprekars_constant(9831) == 7


# algorithm
# - make a number where digits are in ascending order
# - make a number where digits are in descending order
# subtract smaller from bigger
# increment counter by one
# continue until the result == 6174
# 
