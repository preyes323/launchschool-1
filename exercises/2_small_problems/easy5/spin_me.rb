def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

puts spin_me("hello world") # "olleh dlrow"

