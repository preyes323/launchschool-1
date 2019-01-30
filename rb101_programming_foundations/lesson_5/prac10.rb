a = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |item|
  item.each do |key, value|
    item[key] = value + 1
  end
end

p a
