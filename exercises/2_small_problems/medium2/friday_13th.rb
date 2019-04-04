require 'Date'

def friday_13th(year)
  count = 0
  1.upto(12) do |month|
    date_val = Date.new(year, month, 13)
    count += 1 if date_val.friday?
  end
  count
end

=begin

find how many friday the 13ths there are in a year
so:
iterate through every month from 1 - 12
for every 13th of that month
check if it was a friday (increment counter if so)
return counter

=end


puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2
