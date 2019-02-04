def staggered_case(string)
  new_string = ""
  counter = 0
  string.chars.each do |char|
    if char =~ /[^A-z]/
      new_string << char
      next
    elsif counter % 2 == 0
      new_string << char.upcase
      counter += 1
    else
      new_string << char.downcase
      counter += 1
    end
  end
  new_string
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
