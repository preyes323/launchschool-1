def fizzbuzz(startnumber, endnumber)
  startnumber.upto(endnumber) do |num|
    puts num
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
