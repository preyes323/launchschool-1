flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys
# and the values are the positions in the array.

# version 1

hash1 = Hash.new

flintstones.each_with_index do |name, index|
  hash1[name] = index
end

p hash1

# version 2

hash2 = flintstones.each_with_object({}) do |name, hash|
  hash[name] = flintstones.index(name)
end

p hash2

# version 3

array = []
flintstones.each_with_index do |name, index|
  array << [name, index]
end

hash3 = array.to_h

p hash3
