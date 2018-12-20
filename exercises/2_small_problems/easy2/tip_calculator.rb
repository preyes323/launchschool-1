print "What is the bill? "
bill = gets.chomp.to_f

print "What is the tip percentage? "
tip_percentage = gets.chomp.to_f

tip = bill * tip_percentage/100
total_including_tip = bill + tip

puts "The tip is $#{format('%02.2f', tip)}."
puts "The total bill is $#{total_including_tip.round(2)}."
