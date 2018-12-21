print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

current_year = (Time.now.year).to_i
remaining_years = retirement_age - age
retirement_year = remaining_years + current_year

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{remaining_years} of work to go!"
