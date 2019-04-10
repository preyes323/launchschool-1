# - reverse an array without using the built-in reverse method

def reverse(arr)
  new_arr = []
  arr.each do |item|
    new_arr.unshift(item)
  end
  new_arr
end

p reverse([1,2,3])
p reverse(%w(alex tom john))
  
