def minilang(string)
  register = 0
  stack = []
  commands = string.split
  commands.size.times do |index|
    command = commands[index]
    case command
    when "PRINT" then puts register
    when "PUSH"
      stack << register
    when "ADD"
      register += stack.pop
    when "SUB"
      register -= stack.pop
    when "MULT"
      register *= stack.pop
    when "DIV"
      register /= stack.pop
    when "MOD"
      register = register.modulo(stack.pop)
    when "POP"
      register = stack.pop
    else
      register = command.to_i
    end
  end
end

#minilang('PRINT')
#minilang('5 PUSH 3 MULT PRINT')
#minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
#minilang('5 PUSH POP PRINT')
#minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
#minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
#minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
#minilang('-3 PUSH 5 SUB PRINT')
#minilang('6 PUSH')

