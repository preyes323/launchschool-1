# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.

# You may use our `is_prime?` solution.

def is_prime?(number)
  return false if number <= 1
  return true if number == 2
  2.upto(number-1) do |num|
    return false if number % num == 0
  end
  true
end

def nth_prime(int)
  primes = []
  counter = 2
  while primes.size != int
    primes << counter if is_prime?(counter)
    counter += 1
  end
  primes.last
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #nth_prime")
puts("===============================================")
    puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
    puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
    puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
    puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
    puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)
puts("===============================================")
