def rotate_array(array)
  new_array = array.clone
  new_array.push(new_array.shift)
end

def rotate_rightmost_digits(int, rotation_count)
  untouched = int.to_s[0...-rotation_count]
  rotating = int.to_s[-rotation_count..-1]
  (untouched + rotate_array(rotating.chars).join).to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917
