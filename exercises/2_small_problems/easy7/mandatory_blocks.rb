a = [1, 4, 8, 11, 15, 19]

# How would you search this Array to find
# the first element whose value exceeds 8?

puts a.bsearch { |num| num > 8 }

