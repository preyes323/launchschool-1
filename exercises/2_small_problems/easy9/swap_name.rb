def swap_name(string)
  first_name = string.split.first
  last_name = string.split.last
  "#{last_name}, #{first_name}"
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'
