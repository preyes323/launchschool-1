def rotate_array(array)
  new_array = array.clone
  new_array.push(new_array.shift)
end

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]                 # => true

def rotate_string(string)
  rotate_array(string.chars).join
end

puts rotate_string("alex") == "lexa"
puts rotate_string(" aleph") == "aleph "

def rotate_integer(int)
  rotate_string(int.to_s).to_i
end

puts rotate_integer(315) == 153
puts rotate_integer(130) == 301
puts rotate_integer(100) == 1
