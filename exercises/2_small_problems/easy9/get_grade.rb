def get_grade(score1, score2, score3)
  mean = (score1 + score2 + score3) / 3
  return 'A' if mean >= 90
  return 'B' if mean >= 80
  return 'C' if mean >= 70
  return 'D' if mean >= 60
  return 'F' if mean < 60
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
