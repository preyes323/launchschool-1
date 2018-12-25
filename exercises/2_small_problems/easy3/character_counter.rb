puts "Please write word or multiple words: "
input = gets.chomp

characters = input.split('').select {|char| char != " "}.size

puts 'There are #{characters} characters in "#{input}".'
