# mortgage calculator, takes the loan amount, annual percentage rate
# and the loan duration.
# it calculates the monthly interest rate and the loan duration in
# months

def prompt(message)
  puts "=> #{message}"
end

prompt("Welcome to the mortgage calculator!")
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


