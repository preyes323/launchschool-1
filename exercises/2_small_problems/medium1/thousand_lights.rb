def parser(array)
  parsed_array = []
  array.each_with_index do |v, i|
    if v == true
      parsed_array << i+1
    end
  end
  parsed_array
end

def switch_calculator(num)
  lights = []
  1.upto(num) { |num| lights << true } # setup the initial array of lights
  2.upto(num) do |outernum|
    counter = 1
    tog_num = outernum * counter
    while tog_num <= num
      lights[tog_num-1] = !lights[tog_num-1]
      counter += 1
      tog_num = outernum * counter
    end
  end
  parser(lights)
end

puts switch_calculator(5) == [1, 4]
puts switch_calculator(10) == [1, 4, 9]
puts switch_calculator(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
