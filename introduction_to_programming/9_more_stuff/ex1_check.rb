strings = ["laboratory",
           "experiment",
           "Pans Labyrinth",
           "elaborate",
           "polar bear"]

strings.each do |word|
  puts word if word.match(/lab/)
end
