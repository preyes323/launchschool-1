# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.

def nearby_az(string)
  chars = string.split("")
  first_a_index = chars.index("a")
  return false if first_a_index == nil
  slice = chars[first_a_index+1, 3]
  if slice.include?("z")
    return true
  else
    return false
  end
end

# input string
# output: boolean
# 
# datastructures: array of letters
# algorithm:
# - split the string up into characters
# - find the index of the first letter a
# - find the three characters after that letter a
# - return true if z is one of those letters
# - (else false)

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #nearby_az")
puts("===============================================")
    puts('nearby_az("baz") == true: ' + (nearby_az('baz') == true).to_s)
    puts('nearby_az("abz") == true: ' + (nearby_az('abz') == true).to_s)
    puts('nearby_az("abcz") == true: ' + (nearby_az('abcz') == true).to_s)
    puts('nearby_az("a") == false: ' + (nearby_az('a') == false).to_s)
    puts('nearby_az("z") == false: ' + (nearby_az('z') == false).to_s)
    puts('nearby_az("za") == false: ' + (nearby_az('za') == false).to_s)
puts("===============================================")
