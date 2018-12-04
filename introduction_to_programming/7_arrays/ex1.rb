arr = [1, 3, 5, 7, 9, 11]
number = 3

def number_checker(array, number)
  if array.include?(number)
    puts "#{number} is in the array"
  else
    puts "#{number} is not in the array"
  end
end

number_checker(arr, number)
