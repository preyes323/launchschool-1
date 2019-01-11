def titleize(string)
  words = string.split
  title_words = ""
  words.each do |word|
    title_words << word[0].upcase + word[1, word.size] + " "
  end
  title_words
end

words = "the flintstones rock"
puts titleize(words)
