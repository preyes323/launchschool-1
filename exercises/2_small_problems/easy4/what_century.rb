# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number,
# and ends with st, nd, rd, or th as appropriate for that number.

def print_century(year)
  ((year - 1) / 100) + 1
end

def century(input)
  century_as_string = print_century(input).to_s
  digit_count = century_as_string.size
  if %w(4 5 6 7 8 9).include?(century_as_string[-1])
    "#{century_as_string}th"
  elsif digit_count >= 2 && %w(11 12 13).include?(century_as_string[-2..-1])
    "#{century_as_string}th"
  elsif century_as_string[-1] == "0"
    "#{century_as_string}th"
  elsif century_as_string[-1] == "1"
    "#{century_as_string}st"
  elsif century_as_string[-1] == "2"
    "#{century_as_string}nd"
  elsif century_as_string[-1] == "3"
    "#{century_as_string}rd"
  end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
puts century(999) == '10th'
puts century(1000) == '10th'
puts century(1001) == '11th'

