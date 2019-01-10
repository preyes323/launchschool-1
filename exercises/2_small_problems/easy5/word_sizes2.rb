def strip_word(string)
  string.gsub(/[^A-za-z]+/, '')
end

def word_sizes(string)
  words = string.split(' ')
  letter_counts = {}
  words.each do |word|
    stripped_word = strip_word(word)
    if letter_counts.has_key?(stripped_word.size)
      letter_counts[stripped_word.size] += 1
    else
      letter_counts[stripped_word.size] = 1
    end
  end
  letter_counts
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}


