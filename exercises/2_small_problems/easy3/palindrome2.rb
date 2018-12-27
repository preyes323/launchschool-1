# Write a method that returns true if the string passed as an argument is a palindrome,
# false otherwise. A palindrome reads the same forward and backward.
# For this exercise, case matters as does punctuation and spaces.

def real_palindrome?(input)
  string_minus_numbers = input.downcase.gsub(/[^0-9a-z]/, '')
  string_minus_numbers.casecmp?(string_minus_numbers.reverse)
end


puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
