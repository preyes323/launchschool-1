def minilang(string)
  register = 0
  stack = []
  commands = string.split
  commands.size.times do |index|
    command = commands[index]
    case command
    when "PRINT" then puts register
    end
  end
end

minilang('PRINT')
