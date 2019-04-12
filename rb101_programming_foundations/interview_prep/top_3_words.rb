def top_3_words(text)
  text = text.gsub(/[^A-z' ]/, "").squeeze(" ")
  chars = text.split(" ")
  char_count = chars.uniq.each_with_object({}) do |char, hash|
    hash[char] = chars.count(char)
  end
  sorted_vals = char_count.to_a.sort_by do |subarr|
    subarr[1]
  end
  if sorted_vals.size == 0
    return []
  elsif sorted_vals.size == 1
    return [sorted_vals[0][0]]
  elsif sorted_vals.size == 2
    return [sorted_vals.last[0], sorted_vals.first[0]]
  elsif sorted_vals.size >= 3
    return [sorted_vals.last[0], sorted_vals[-2][0], sorted_vals[-3][0]]
  end
end
  
