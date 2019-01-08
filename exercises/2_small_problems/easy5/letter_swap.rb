def swap(sentence)
  words = sentence.split
  words.each do |word|
    first = word.chars.last
    last = word.chars.first
    word[0] = first
    word[-1] = last
  end
  words.join(" ")
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
