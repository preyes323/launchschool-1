a = %w(Harry Tom Megan Hagrid)

b = a.each_with_object([]) do |name, array|
  array << name if name.chars.first == "H"
end

p b

c = [1, 2, 3, 4, 5, 6]
over_three, under_three = c.partition { |num| num > 3 }

p over_three
p under_three
