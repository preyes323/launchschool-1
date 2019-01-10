# Pick out the minimum age from our current Munster family hash

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# version 1

puts ages.values.min

# version 2

minimum_age = ages.values.first
ages.each do |_, value|
  minimum_age = value if value < minimum_age
end
puts minimum_age
