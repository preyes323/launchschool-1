words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

sorted_words_hash = Hash.new

words.each do |word|
  sorted_words_hash[word] = word.chars.uniq.sort
end

interim_hash = Hash.new

sorted_words_hash.each do |key, value|
  if interim_hash.has_key?(value)
    interim_hash[value].push(key)
  else
    interim_hash[value] = [key]
  end
end

interim_hash.each {|key,value| puts "#{key}: #{value}"}
