# rules:
#   all sides must have lengths > 0
#   invalid also if sum of two shortest sides is not > the longest side
#
#   equilateral -- all sides equal lenght
#   isoscelese -- 2 sides equal length, third different
#   scalene -- 3 sides different length
  
def triangle(s1, s2, s3)
  sorted_vals = [s1, s2, s3].sort
  return :invalid if sorted_vals.any? {|val| val <= 0}
  return :invalid if (sorted_vals[0] + sorted_vals[1]) < sorted_vals[2]
  return :equilateral if s1 == s2 && s1 == s3
  return :isosceles if s1 == s2 && s3 != s1
  return :isosceles if s2 == s3 && s2 != s1
  return :isosceles if s1 == s3 && s2 != s1
  :scalene
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
