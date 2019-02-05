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

def substrings(string)
  final = []
  count = 0
  while count != string.size
    final << substrings_at_start(string[count..string.size])
    count += 1
  end
  final.flatten
end

p substrings("arne")
puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
