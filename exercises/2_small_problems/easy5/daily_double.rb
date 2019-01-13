def crunch(string)
  new_string = ""
  previous_character = nil
  string.chars.each do |character|
    next if character == previous_character
    new_string << character
    previous_character = character
  end
  new_string
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''

