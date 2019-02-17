CHARACTER = "*"

def format_diamond(array, num)
  formatted_array = array.map do |int|
    (CHARACTER * int).center(num)
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

def format_hollow(array, num)
  # transforms the array of ints into an array of strings
  stars_alone = array.map do |int|
    (CHARACTER * int)
  end
  # transforms the array of string stars into an array of arrays
  # made up of each indidual star
  stars_chars = stars_alone.map do |line|
    line.chars
  end
  # transforms the array of arrays such that it hollows out the middle
  # converts "*" to a " " if it not the first or the last
  hollow_array = []
  stars_chars.each do |line|
    sub_array = []
    line.each_with_index do |star, index|
      if index == 0 || index == (line.size-1)
        sub_array << star
      else
        sub_array << " "
      end
    end
    hollow_array << sub_array
  end
  # joins the subarrays together so we have an array of strings
  # with the strings centered amongst a buffer of spaces
  final = hollow_array.map do |line|
    line.join.center(num)
  end
  final
end

def hollow_diamond(num)
  diamond_array = []
  1.upto(num) do |counter|
    diamond_array << counter if counter.odd?
  end
  (num-1).downto(1) do |counter|
    diamond_array << counter if counter.odd?
  end
  puts format_hollow(diamond_array, num)
end

diamond(1)
diamond(3)
diamond(9)
diamond(15)
diamond(45)

hollow_diamond(1)
hollow_diamond(3)
hollow_diamond(9)
hollow_diamond(15)
hollow_diamond(45)
