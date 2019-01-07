def select_fruit(hash)
  selected_fruit = {}
  hash.each do |key, value|
    if hash[key] == "Fruit"
      selected_fruit[key] = value
    end
  end
  selected_fruit
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

puts select_fruit(produce)
