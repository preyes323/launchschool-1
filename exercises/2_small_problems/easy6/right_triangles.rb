def triangle(num)
  counter = num - 1
  while counter != 0
    puts "#{' '*counter}#{'*'*(num-counter)}"
    counter -= 1
  end
end

triangle(5)
triangle(9)
