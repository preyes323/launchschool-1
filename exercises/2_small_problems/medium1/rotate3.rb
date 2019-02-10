def rotate_array(array)
  new_array = array.clone
  new_array.push(new_array.shift)
end

def rotate_rightmost_digits(int, rotation_count)
  untouched = int.to_s[0...-rotation_count]
  rotating = int.to_s[-rotation_count..-1]
  (untouched + rotate_array(rotating.chars).join).to_i
end

def max_rotation(int)
  rotated_int = int
  count = int.to_s.size
  while count != 0
    rotated_int = rotate_rightmost_digits(rotated_int, count)
    count -= 1
  end
  rotated_int
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
