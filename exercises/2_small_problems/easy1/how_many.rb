def count_occurrences(array)
  if array.empty?
    puts "you need to feed me an array please!"
  else
    counting_hash = Hash.new
    array.each do |item|
      if counting_hash.has_key?(item)
        counting_hash[item] += 1
      else
        counting_hash[item] = 1
      end
    end
    counting_hash.each do |key, value|
      puts "#{key} => #{value}"
    end
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
