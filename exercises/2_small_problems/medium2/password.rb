password = nil

def verify_password(pw)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp
  
  if input == pw
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  puts 'What would you like your password to be?'
  password = gets.chomp
end

verify_password(password)

