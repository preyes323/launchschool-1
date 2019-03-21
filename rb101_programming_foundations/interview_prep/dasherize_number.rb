# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
  string = ""
  chars = num.to_s.chars
  chars.each_with_index do |num, idx|
    if (0..(chars.size-2)).cover?(idx)
      string << num if num.to_i.even?
      string << num + "-" if num.to_i.odd?
    end
    if idx == chars.size-1
      if chars[idx-1].to_i.odd?
        string << num
      elsif chars[idx-1].to_i.even?
        string << "-" + num if num.to_i.odd?
        string << num if num.to_i.even?
      end
    end
  end
  string
end

puts dasherize_number(203)
puts dasherize_number(333)

# ds = empty string needed as receptacle
# algorithm:
#   - split the numbers into an array of chars
# - loop through the numbers until the penultimate number
# - if the number is odd, then add the number plus a dash
#   - if the number is even, then just add the number itself

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #dasherize_number")
puts("===============================================")
    puts(
      'dasherize_number(203) == "20-3": ' +
      (dasherize_number(203) == '20-3').to_s
    )
    puts(
      'dasherize_number(303) == "3-0-3": ' +
      (dasherize_number(303) == '3-0-3').to_s
    )
    puts(
      'dasherize_number(333) == "3-3-3": ' +
      (dasherize_number(333) == '3-3-3').to_s
    )
    puts(
      'dasherize_number(3223) == "3-22-3": ' +
      (dasherize_number(3223) == '3-22-3').to_s
    )
puts("===============================================")
