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

def palindromes(string)
  substrings = substrings(string)
  final = []
  substrings.each do |sub|
    final << sub if sub == sub.reverse && sub.size == 1
  end
  final
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
