# Have the function QuestionsMarks(str) take the str string parameter, which will contain single digit
# numbers, letters, and question marks, and check if there are exactly 3 question marks between every
# pair of two numbers that add up to 10. If so, then your program should return the string true,
# otherwise it should return the string false. If there aren't any two numbers that add up to 10
# in the string, then your program should return false as well.

# For example: if str is "arrb6???4xxbl5???eee5" then your program should return true because
# there are exactly 3 question marks between 6 and 4, and 3 question marks between 5 and 5
# at the end of the string. 

def questions_marks(str)
  
end

puts questionsmarks("aa6?9") == false
puts questions_marks("acc?7??sss?3rr1??????5") == true

# input: string
# output: boolean
# rules:
# - string can contain single digit numbers, letters and question marks
# - ALL pairs of two numbers that add up to 10 should have exactly 3 "?" marks between them to get to "true"
# - if there are no pairs of 2 numbers that == 10 then return false

# find the first number index
# find the second number index
# check if they add up to 10
# if not, skip to next round
#   if they do, look at the chars in between the two
#        return false unless those chars == "???"
