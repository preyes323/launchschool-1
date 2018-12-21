def invalid_name?(input)
  if input.to_s.empty? then true
  else false
  end
end

puts invalid_name?('')
puts invalid_name?('Alex')
puts invalid_name?(3)
