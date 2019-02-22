def find_divisors(int)
  divisors = []
  1.upto(int) do |counter|
    divisors << counter if int.modulo(counter) == 0
  end
  divisors
end

def divisors_squared(array)
  array.map { |num| num*num }
end

def list_squared(m, n)
    array = []
    m.upto(n) do |num|
      squared_divisors = divisors_squared(find_divisors(num))
      array << [num, squared_divisors.sum] if Math.sqrt(squared_divisors.sum).divmod(1)[1] == 0.0
    end
    array
end

p list_squared(1,250)

