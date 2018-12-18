def printer
  puts "hi my name is Alex"
end

counter = 0

loop do
  while counter < 10
    printer
    new_counter = 0
    loop do
      while new_counter < 3
        if printer() == "hi my name is Alex"
          puts 'oddy!'
        else
          printer
        end
        new_counter += 1
      end
      break
    end
    counter += 1
  end
  break
end
