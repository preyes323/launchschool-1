# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.

def palindrome?(string)
  return true if string == string.reverse
  false
end

def substring_generator(string)
  substrings = []
  0.upto(string.size-1) do |starter_index|
    1.upto(string.size) do |length|
      substrings << string.slice(starter_index, length)
    end
  end
  substrings
end

def longest_palindrome(string)
  longest = ""
  substrings = substring_generator(string)
  substrings.each do |substring|
    longest = substring if substring.size > longest.size && palindrome?(substring)
  end
  longest
end

#input is a string of lowercase letters
#output: the longest string of letters from among the combs that is a palindrome

#algorithm:
#- find all the substrings
#  - two loops. one for the starting index
#   - second loop for the length


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #longest_palindrome")
puts("===============================================")
    puts(
      'longest_palindrome("abcbd") == "bcb": ' +
      (longest_palindrome('abcbd') == 'bcb').to_s
    )
    puts(
      'longest_palindrome("abba") == "abba": ' +
      (longest_palindrome('abba') == 'abba').to_s
    )
    puts(
      'longest_palindrome("abcbdeffe") == "effe": ' +
      (longest_palindrome('abcbdeffe') == 'effe').to_s
    )
puts("===============================================")
