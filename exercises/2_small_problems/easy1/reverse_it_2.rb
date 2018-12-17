def reverse_words(string)
  reversed_string = []
  string.split.each do |word|
    if word.size >= 5
      reversed_string.push(word.reverse)
    else
      reversed_string.push(word)
    end
  end
  reversed_string.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
