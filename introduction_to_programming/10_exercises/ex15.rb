arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|word| word.start_with?("s")}

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|word| word.start_with?("s") || word.start_with?("w")}

