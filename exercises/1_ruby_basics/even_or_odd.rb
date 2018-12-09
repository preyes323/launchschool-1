count = 1

loop do
  while count <= 5
    if count.even?
      puts "#{count} is even!"
      count += 1
    else
      puts "#{count} is odd!"
      count += 1
    end
  end
  break
end
