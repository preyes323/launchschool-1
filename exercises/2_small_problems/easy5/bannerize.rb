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

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
