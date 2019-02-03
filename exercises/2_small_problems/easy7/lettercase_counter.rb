def letter_case_count(string)
  count = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |char|
    if char.match(/[A-Z]/)
      count[:uppercase] += 1
    elsif char.match(/[a-z]/)
      count[:lowercase] += 1
    else
      count[:neither] += 1
    end
  end
  count
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
