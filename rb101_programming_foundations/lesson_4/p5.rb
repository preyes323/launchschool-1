# Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# version 1

index = nil
flintstones.each do |name|
  index = flintstones.index(name) if name[0..1] == "Be"
end

puts index
