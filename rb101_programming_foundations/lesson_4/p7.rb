# Create a hash that expresses the frequency with which each letter occurs in this string

statement = "The Flintstones Rock"

# solution 1

characters = statement.chars.select { |character| /[A-z]/ }
frequency_hash = Hash.new

characters.each do |character|
  if frequency_hash.has_key?(character)
    frequency_hash[character] += 1
  else
    frequency_hash[character] = 1
  end
end

p frequency_hash
