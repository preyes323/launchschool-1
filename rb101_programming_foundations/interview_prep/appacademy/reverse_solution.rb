# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

# input -- string
# output -- string, but letters in reverse order
# datastructure -- array to hold the reverse string?
# algorithm -- loop backwards from the last value, each time pushing the value to the array
#   -- break when you reach an index of < 0

def reverse(string)
  reversed_string = ""
  i = 0
  while i < string.size
    reversed_string = string[i] + reversed_string
    i += 1
  end
  reversed_string
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #reverse")
puts("===============================================")
    puts(
      'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
    )
    puts(
      'reverse("a") == "a": ' + (reverse("a") == "a").to_s
    )
    puts(
      'reverse("") == "": ' + (reverse("") == "").to_s
    )
puts("===============================================")
