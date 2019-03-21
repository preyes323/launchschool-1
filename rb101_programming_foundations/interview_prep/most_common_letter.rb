# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  letter = string[0]
  count = string.count(letter)
  string.chars.each do |char|
    if string.count(char) > count
      letter = char
      count = string.count(char)
    end
  end
  [letter, count]
end

# input: string
# output: array with most common letter and count
# algorithm
# - init variables with first letter in string plus its count
# - loop over all remaining letters
# - if count for letter is bigger than current count, update both variables
# - return the variables in array format

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #most_common_letter")
puts("===============================================")
    puts(
      'most_common_letter("abca") == ["a", 2]: ' +
      (most_common_letter('abca') == ['a', 2]).to_s
    )
    puts(
      'most_common_letter("abbab") == ["b", 3]: ' +
      (most_common_letter('abbab') == ['b', 3]).to_s
    )
puts("===============================================")
