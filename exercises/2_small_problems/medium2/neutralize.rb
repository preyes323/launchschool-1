NEGS = ['dull', 'boring', 'annoying', 'chaotic']

def neutralize(sentence)
  words = sentence.split(' ')
  new = []
  words.each do |word|
    new << word if NEGS.include?(word) == false
  end
  new.join(' ')
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
