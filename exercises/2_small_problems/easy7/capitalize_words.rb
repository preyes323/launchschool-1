def word_cap(string)
  words = string.split(" ")
  new_words = []
  words.each do |word|
    new_words << word.downcase
  end
  new_words.map do |word|
    word[0] = word[0].upcase
  end
  new_words.join(" ")
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
