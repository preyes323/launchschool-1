arr = ['10', '11', '9', '7', '8']

arr = arr.map { |item| item.to_i }.sort { |a, b| b <=> a }.map do |item|
  item.to_s
end

puts arr
