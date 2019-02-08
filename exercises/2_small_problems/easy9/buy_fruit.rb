def buy_fruit(array)
  array.each_with_object([]) do |item, new_array|
    item[1].times do
      new_array << item[0]
    end
  end
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
