puts "What is your name?"
name = gets.chomp

def age_printer(name='Teddy')
  "#{name} is #{rand(20..200)} years old!"
end

puts age_printer
