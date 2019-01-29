VOWELS = %w(a e i o u)

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.values.each do |value|
  vowels = ""
  value.each do |word|
    word.split('').each do |char|
      vowels += char if VOWELS.include?(char)
    end
  end
  p vowels
end

