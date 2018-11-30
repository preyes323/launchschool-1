def number_search(num_val)
  case
  when num_val < 0
    puts "less than zero"
  when num_val <= 50
    puts "0 to 50"
  else
    puts "51 and above"
  end
end

number_search(-3)
number_search(0)
number_search(15)
number_search(51)
number_search(1000)
