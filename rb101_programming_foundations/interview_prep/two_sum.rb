# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
  nums.each_with_index do |num, idx|
    sub_arrays = nums.product([num])
    sub_arrays.each_with_index do |sub_array, sub_idx|
      return [idx, sub_idx] if sub_array.sum == 0
    end
  end
  nil
end

# input: array of numbers
# output: positions of the two numbers that some to zero in the form of a two-item array

# algorithm: loop over each item in the array
# inner loop, every item in the array minus the current one we're on in outer loop
# add these two items together. return true if == 0

# else return false

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #two_sum")
puts("===============================================")
    puts(
      'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
    )
    puts(
      'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
   )
    puts("===============================================")
    
