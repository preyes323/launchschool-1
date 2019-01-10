ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# throw out the really old people (age 100 or older)

# version 1

p ages
ages.select! { |_, value| value < 100 }
p ages
