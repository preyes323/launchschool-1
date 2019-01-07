def select_letter(string, selection_char)
  counter = 0
  returned_string = ""

  loop do
    break if string.size == counter
    current_character = string[counter]
    returned_string += current_character if current_character == selection_char
    counter += 1
  end
  returned_string
end

question = 'How many times does a particular character appear in this sentence?'
puts select_letter(question, 'a') # => "aaaaaaaa"
puts select_letter(question, 't') # => "ttttt"
puts select_letter(question, 'z') # => ""
