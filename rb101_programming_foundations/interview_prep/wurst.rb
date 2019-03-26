SAUSAGES = %w(kielbasa chorizo moronga salami sausage andouille naem merguez gurka snorker pepperoni)

def string_reshaper(string)
  final_string = string
  punc = ""
  punc = string.chars.last if string.chars.last.match('\W')
  final_string = string[0..-2] if punc.size > 0
  plural = false
  plural = true if final_string.chars.last == "s"
  singular_string = final_string[0..-2] if plural == true
  return [singular_string, punc, plural]
end

def wurst_is_better(string)
  final_string = []
  words = string.split(" ")
  words.each.with_index do |word, index|
    reshaped = string_reshaper(word)
    if word.downcase.match('wurst')
      final_string << word
      next
    elsif SAUSAGES.include?(reshaped[0])
      substring = ""
      if reshaped[2] == true
        substring = "Wursts" + reshaped[1]
      else
        substring = "Wurst" + reshaped[1]
      end
      final_string << substring
    else
      final_string << word
    end
  end
  final_string.join(" ")
end

p wurst_is_better("I like chorizos, but not sausages") == "I like Wursts, but not Wursts"
p wurst_is_better("Bratwurst and Rostbratwurst are sausages") == "Bratwurst and Rostbratwurst are Wursts"

# input:
# - sentence
# output:
# - formatted sentence
# rules:
# - replace every sausage in the list into 'Wurst' (adding s if it was originally plural)
# - return the string
# - retain the original punctuation
# algorithm:
# - initialise a final string variable
# - split up the sentence by " "
# - iterate through the word items:
# - if the word includes 'wurst', insert the word and next
# - if the word includes one of our listed sausages, check if it has a final punctuation and depending on that
# add the word to our string with plurals and/or punctuation
#
# extra methods:
# - check for punctuation
# - check for plural

# method that takes in a word, returning an array with the word, the punctuation and whether it's plural or not

