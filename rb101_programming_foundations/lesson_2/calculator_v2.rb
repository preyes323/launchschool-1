# program to perform calculations
# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

def prompt(message)
  puts("=> #{message}")
end

def operation_to_message(op)
  case op
  when '1' then 'Adding'
  when '2' then 'Subtracting'
  when '3' then 'Multiplying'
  when '4' then 'Dividing'
  end
end

number1 = nil
number2 = nil
name = nil
operator = nil

prompt("Welcome to the Calculator! Enter your name:")

loop do
  name = gets.chomp

  if name.empty?
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop

  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets.chomp
  
    if number1.integer? then break
    else prompt("Hmm... that doesn't look like a valid number")
    end
  end
  
  loop do
    prompt("What's the second number?")
    number2 = gets.chomp
  
    if number2.integer? then break
    else prompt("Hmm... that doesn't look like a valid number")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  prompt(operator_prompt)

  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator) then break
    else prompt("Must choose 1, 2, 3 or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")
  
  result = case operator
           when '1' then number1.to_i + number2.to_i
           when '2' then number1.to_i - number2.to_i
           when '3' then number1.to_i * number2.to_i
           when '4' then number1.to_i / number2.to_i
           end
  
  prompt("The result is #{result}")
  prompt("Do you want to calculate again? (Y to calculate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  
end

prompt("Thank you for using calculator!")
