def penultimate(string)
  words = string.split(' ')
  words[-2]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'
