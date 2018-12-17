def reverse_words(string)
  reversed_string = []
  string.split.each do |word|
    word.reverse! if word.size >= 5
    reversed_string.push(word)
  end
  
  reversed_string.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
