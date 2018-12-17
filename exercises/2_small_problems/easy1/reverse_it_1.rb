# Write a method that takes one argument, a string,
# and returns a new string with the words in reverse order.

def reverse_sentence(string)
  reversed_string = ''
  string.split(' ').reverse_each do |word|
    if reversed_string == ''
      reversed_string = reversed_string + "#{word}"
    else
      reversed_string = reversed_string + " #{word}"
    end
  end
  reversed_string
end


# These tests should print 'true'
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
