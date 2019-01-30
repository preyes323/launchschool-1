arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# return an array which contains only the hashes where all the integers are even.

a = arr.select do |hash|
  hash.values.flatten.all? { |item| item % 2 == 0 }
end

p a
