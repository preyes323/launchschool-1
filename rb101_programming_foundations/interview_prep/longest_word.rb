# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.

def longest_word(sentence)
  longest = words.first
  sentence.split.each do |word|
    longest = word if word.size > longest.size
  end
  longest
end

# input : string
# output: the longest word of them all
# 
# datastructure: array of words (made by using the split method)
# 
# algorithm:
# - split the sentence using .split
# - initialise a 'longest' variable + set the first word to the 'longest' variable
# - iterate over the words. if a word is longer than longest, replace it, next if not
# - at the end, return 'longest'

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #longest_word")
puts("===============================================")
    puts(
      'longest_word("short longest") == "longest": ' +
      (longest_word('short longest') == 'longest').to_s
    )
    puts(
      'longest_word("one") == "one": ' +
      (longest_word('one') == 'one').to_s
    )
    puts(
      'longest_word("abc def abcde") == "abcde": ' +
      (longest_word('abc def abcde') == 'abcde').to_s
    )
puts("===============================================")
