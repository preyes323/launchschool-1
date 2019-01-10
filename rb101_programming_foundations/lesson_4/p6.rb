# Amend this array so that the names are all shortened
# to just the first three characters

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# version 1

flintstones.map! { |name| name[0..2] }
p flintstones

