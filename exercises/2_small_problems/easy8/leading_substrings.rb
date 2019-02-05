def substrings_at_start(string)
  chars = string.chars
  substrings = []
  counter = 0
  while counter != chars.size
    substrings << chars[0, counter+1].join
    counter += 1
  end
  substrings
end

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
