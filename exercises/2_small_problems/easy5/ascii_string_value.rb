def ascii_value(string)
  total = 0
  string.each_char { |char| total += char.ord }
  total
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
