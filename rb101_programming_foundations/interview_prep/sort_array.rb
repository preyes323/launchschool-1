def sort_array(source_array)
  odds = source_array.select {|n| n.odd?}.sort
  counter = 0
  source_array.each_with_object([]) do |item, array|
    array << item if item.even?
    array << odds[counter] if item.odd?
    counter += 1 if item.odd?
  end
end
