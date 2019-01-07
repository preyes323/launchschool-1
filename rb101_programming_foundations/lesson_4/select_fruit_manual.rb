def select_fruit(hash)
  counter = 0
  hash_keys = hash.keys
  selected_fruit = {}

  loop do
    break if counter == hash_keys.size
    current_key = hash_keys[counter]
    if hash[current_key] == "Fruit"
      selected_fruit[current_key] = "Fruit"
    end
    counter += 1
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
