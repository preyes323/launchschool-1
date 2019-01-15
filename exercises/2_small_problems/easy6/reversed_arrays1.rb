def reverse!(array)
  index = array.size
  rising_index = 0
  dupe = array.map { |value| value }
  if array.size == 0
    return array
  end
  loop do
    array[index-1] = dupe[rising_index]
    index -= 1
    rising_index += 1
    break if index == 0
  end
  array
end

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
puts list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
puts list == ["abc"]

list = []
reverse!(list) == []
puts list == []
