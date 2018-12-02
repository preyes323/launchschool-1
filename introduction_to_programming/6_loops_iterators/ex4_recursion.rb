def count_to_zero(number)
  puts number
  unless number == 0
    count_to_zero(number - 1)
  end
end

count_to_zero(150)
