def print_in_box(string)
  string_size = string.size
  outer_line = "+-#{'-' * string_size}-+"
  space_line = "|#{' ' * (2+string_size)}|"
  text_line = "| #{string} |"
  puts outer_line
  puts space_line
  puts text_line
  puts space_line
  puts outer_line
end

def print_in_box_mod(string)
  text = string if string.size < 80
  text = string[0, 80] if string.size > 80
  string_size = text.size
  outer_line = "+-#{'-' * string_size}-+"
  space_line = "|#{' ' * (2+string_size)}|"
  text_line = "| #{text} |"
  puts outer_line
  puts space_line
  puts text_line
  puts space_line
  puts outer_line
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

print_in_box_mod("arsienars rasien rsainersa ieasnr rsaien asrine arsierans asienarsienars aerstnea renarsena rs")
