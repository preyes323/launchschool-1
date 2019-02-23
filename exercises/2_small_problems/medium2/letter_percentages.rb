def letter_percentages(string)
  hash = {lowercase: 0, uppercase: 0, neither: 0}
  total_count = string.size.to_f
  hash[:lowercase] = 100 * (string.chars.select {|char| char =~ /[a-z]/}.count) / total_count
  hash[:uppercase] = 100 * (string.chars.select {|char| char =~ /[A-Z]/}.count) / total_count
  hash[:neither] = (100 - hash[:lowercase] - hash[:uppercase])
  hash
end

puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
