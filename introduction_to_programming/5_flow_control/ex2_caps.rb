def capitalise_if_longer_than_ten(words)
  if words.length > 10
    words.upcase
  else
    puts "this string isn't longer than 10 characters, sorry"
  end
end
  
puts "give me a string please..."
text = gets.chomp
puts capitalise_if_longer_than_ten(text)
