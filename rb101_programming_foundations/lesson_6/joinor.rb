def joinor(array, divider=",", word="or")
  string = ""
  initial_numbers = array.slice(0..-2)
  last_number = array.last
  initial_numbers.each do |num|
    string << "#{num}#{divider} "
  end
  string << "#{word} #{last_number}"
  string
end

puts joinor([1, 2])                   # => "1 or 2"
puts joinor([1, 2, 3])                # => "1, 2, or 3"
puts joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
puts joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
