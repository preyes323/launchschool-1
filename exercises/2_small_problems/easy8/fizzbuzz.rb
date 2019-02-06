def fizzbuzz(startnumber, endnumber)
  startnumber.upto(endnumber) do |num|
    case
    when num % 3 == 0 && num % 5 == 0 then puts "FizzBuzz"
    when num % 3 == 0 then puts "Fizz"
    when num % 5 == 0 then puts "Buzz"
    else puts num
    end
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
