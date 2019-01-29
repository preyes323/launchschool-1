arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.each do |subarr|
  subarr.sort!.reverse!
end

p arr
