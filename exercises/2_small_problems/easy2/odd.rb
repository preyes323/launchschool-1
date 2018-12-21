# first solution
1.upto(99) { |num| puts num if num.odd? }

# second solution (with identical results)
puts (1..99).to_a.select { |num| num.odd? }1.upto(99) { |num| puts num if num.even? }
