# Have the function SimpleSymbols(str) take the str parameter being passed
# and determine if it is an acceptable sequence by either returning the
#string true or false. The str parameter will be composed of + and = symbols
#with several letters between them (ie. ++d+===+c++==a) and for the string
#to be true each letter must be surrounded by a + symbol. So the string
# to the left would be false. The string will not be empty and will have
# at least one letter. 

def simple_symbols(string)
  chars = string.chars
  return "false" if chars.first.match('[A-z]')
  return "false" if chars.last.match('[A-z]')
  counter = 1
  counter.upto(chars.size-2) do |n|
    preceding = chars[n-1]
    char = chars[n]
    following = chars[n+1]
    return "false" if char.match('[A-z]') &&
                    (preceding != "+" || following != "+")
  end
  "true"
end

puts simple_symbols("+d+=3=+s+") == "true"
puts simple_symbols("f++d+") == "false"

