# program to perform calculations
# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

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

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

# a method to validate that we're taking in an int or a float
# returns a boolean
def number?(input)
  integer?(input) || float?(input)
end

def fake_name?(input)
  case input
  when nil then true
  when ' ' then true
  when '' then true
  else false
  end
end

number1 = nil
number2 = nil
name = nil
operator = nil

prompt(MESSAGES['welcome'])

loop do
  name = gets.chomp

  if fake_name?(name)
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  loop do
    prompt(MESSAGES['first_number'])
    number1 = gets.chomp
    if number?(number1) then break
    else prompt(MESSAGES['valid_number'])
    end
  end
  loop do
    prompt(MESSAGES['second_number'])
    number2 = gets.chomp
    if number?(number2) then break
    else prompt(MESSAGES['valid_number'])
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
    else prompt(MESSAGES['valid_operation'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")
  if integer?(number1) && integer?(number2)
    result = case operator
             when '1' then number1.to_i + number2.to_i
             when '2' then number1.to_i - number2.to_i
             when '3' then number1.to_i * number2.to_i
             when '4' then number1.to_i / number2.to_i
             end
  else
    result = case operator
             when '1' then number1.to_f + number2.to_f
             when '2' then number1.to_f - number2.to_f
             when '3' then number1.to_f * number2.to_f
             when '4' then number1.to_f / number2.to_f
             end
  end
  prompt("The result is #{result}")
  prompt(MESSAGES['calculate_again'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['thanks'])
