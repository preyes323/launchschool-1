def alphabet_position(text)
  letters = text.downcase.chars.select do |char|
    char.match('[A-z]')
  end
  letters.map do |char|
    char.ord - 96
  end.join(" ")
end

p alphabet_position("The sunset sets at twelve o' clock.")

=begin
get the chars and make downcase
do a select for anything [A-z]
do a map and transform to num.ord -96

=end
