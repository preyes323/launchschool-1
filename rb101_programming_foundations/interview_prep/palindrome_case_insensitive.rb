def palindrome?(string)
  return true if string == string.reverse
  false
end

def real_palindrome?(string)
  string_for_eval = ""
  string.downcase.chars.each do |char|
    string_for_eval << char if char.match('[A-z]')
  end
  palindrome?(string_for_eval)
end

=begin
rules:
- case-insensitive (shouldn't matter what case something is)
- shoudl ignore all non-alphanumeric characters

=end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
