=begin
Write a method that takes one integer argument, which may be 
positive, negative, or zero. 
This method returns true if the number's absolute value is odd.
You may assume that the argument is a valid integer value.
=end

=begin
examples:

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

=end

def is_odd?(int)
  if int % 2 == 0 then false
  else true
  end
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
puts "---------------"
def is_odd_remainder?(int)
  if int.remainder(2) == 0 then false
  else true
  end
end

puts is_odd_remainder?(2)
puts is_odd_remainder?(-5)
puts is_odd_remainder?(-4)
puts is_odd_remainder?(0)
puts is_odd_remainder?(5)
