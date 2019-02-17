def format_diamond(array, num)
  formatted_array = array.map do |int|
    ("*" * int).center(num)
  end
  formatted_array
end

def diamond(num)
  diamond_array = []
  1.upto(num) do |counter|
    diamond_array << counter if counter.odd?
  end
  (num-1).downto(1) do |counter|
    diamond_array << counter if counter.odd?
  end
  puts format_diamond(diamond_array, num)
end

diamond(1)
diamond(3)
diamond(9)
diamond(15)
