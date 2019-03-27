# Write a method that takes a string as argument, and returns true if all parentheses
# in the string are properly balanced, false otherwise. To be properly balanced,
# parentheses must occur in matching '(' and ')' pairs.
# Note that balanced pairs must each start with a (, not a ).

def balanced?(string)
  parens = string.gsub(/[^()]/, "")
  return false if parens[0] == ")"
  return false if parens.count("(") != parens.count(")")
  count = 0
  parens.chars.each do |item|
    count += 1 if item == "("
    count -= 1 if item == ")"
    return false if count < 0
  end
  true
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false
