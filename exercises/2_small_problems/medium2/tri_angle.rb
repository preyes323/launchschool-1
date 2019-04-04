def triangle(a1, a2, a3)
  angles = [a1, a2, a3]
  return :invalid if angles.sum != 180
  return :invalid if angles.any? {|angle| angle <= 0}
  return :acute if angles.all? {|angle| angle < 90}
  return :right if angles.any? {|angle| angle == 90}
  return :obtuse if angles.any? {|angle| angle > 90}
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid
