# this code assumes that inputs are valid

def compute_sum(input)
  total = 0
  (1..input).each {|num| total += num }
  total
end

def compute_product(input)
  total = 1
  (1..input).each {|num| total = total * num }
  total
end

puts ">> Please enter an integer greater than 0:"
int = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
calculation_choice = gets.chomp
case calculation_choice
when "s" then puts "The sum of the integers between 1 and #{int} is #{compute_sum(int)}."
when "p" then puts "The product of the integers between 1 and #{int} is #{compute_product(int)}."
end
