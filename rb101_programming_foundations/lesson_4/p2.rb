ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Add up all of the ages from the Munster family hash.

# version 1

total_ages = ages.values.sum
puts total_ages

# version 2

total = 0

ages.each { |_, value| total += value }

puts total
