# mortgage calculator, takes the loan amount, annual percentage rate
# and the loan duration.
# it calculates the monthly interest rate and the loan duration in
# months

def prompt(message)
  puts "=> #{message}"
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

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

loan_input = nil
apr_input = nil
loan_duration_input = nil

prompt("Welcome to the mortgage calculator!")
prompt("This programme will calculate your monthly payment amount")
prompt("What's your name?")

name = nil
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
    prompt("What is the loan amount in USD?")
    loan_input = gets.chomp
    if number?(loan_input) && loan_input.to_i > 0 then break
    else prompt("Please enter a valid number.")
    end
  end

  loop do
    prompt("What is your Annual Percentage Rate (APR)?")
    prompt("Please give the number as a percentage i.e. 5")
    apr_input = gets.chomp
    if number?(apr_input) && apr_input.to_i > 0 && apr_input.to_i <= 100
      break
    else
      prompt("Please enter a valid number.")
    end
  end

  loop do
    prompt("What is the loan duration in years?")
    loan_duration_input = gets.chomp
    if number?(loan_duration_input) && loan_duration_input.to_i > 0 then break
    else prompt("Please enter a valid number.")
    end
  end

  loan_total = loan_input.to_f
  monthly_interest_rate = apr_input.to_f / 12
  loan_duration_months = loan_duration_input.to_i * 12
  monthly_payment = loan_total *
                    (monthly_interest_rate /
                     (1 - (1 + monthly_interest_rate)**-loan_duration_months))
  prompt("Calculating your monthly payment...")
  puts "----------------------------------------------"
  prompt("Your monthly payment comes out to #{monthly_payment.round(2)} USD.")
  puts "----------------------------------------------"
  prompt("Would you like to do another mortgage calculation?")
  prompt("Type Y for yes")
  answer = gets.chomp
  break unless answer.downcase == 'y'
  system('clear') || system('cls')
end

prompt("Thank you for using the mortgage calculator!")
