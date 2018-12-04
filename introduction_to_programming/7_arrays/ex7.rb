def array_builder(array)
  p array
  p array.map {|n| n+=2}
end

test_array = [1,2,3]
array_builder(test_array)
