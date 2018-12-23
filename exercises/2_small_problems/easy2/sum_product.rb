def compute_sum(input)
  (1..input).inject(:+)
end

def compute_product(input)
  (1..input).inject(:*)
end

def validate_positive_integer?(input)
  input.to_i.to_s == input && input.to_i > 0
end

int = nil
loop do
  puts ">> Please enter an integer greater than 0:"
  int = gets.chomp
  if validate_positive_integer?(int)
    int = int.to_i
    break
  else puts ">> Please enter a valid positive integer."
  end
end

calculation_choice = nil
loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  calculation_choice = gets.chomp
  if calculation_choice == "s" || calculation_choice == "p" then break
  else puts ">> Please enter a valid choice."
  end
end

case calculation_choice
when "s" then puts "The sum of the integers between 1 and #{int} is #{compute_sum(int)}."
when "p" then puts "The product of the integers between 1 and #{int} is #{compute_product(int)}."
end
