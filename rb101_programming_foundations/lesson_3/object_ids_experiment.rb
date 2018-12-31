def random_method(first, second)
  puts first.object_id
  puts second.object_id
end

a = 13
b = "happy"

puts "#{a} is #{a.object_id}"
puts "#{b} is #{b.object_id}"

random_method(a, b)
