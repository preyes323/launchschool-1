def max_sequence(arr)
  return 0 if arr.all? {|val| val < 0}
  return 0 if arr == []
  subarrays = []
  outer_index = 0
  inner_index = 0
  until outer_index == arr.size
    until inner_index == arr.size
      subarrays << arr[outer_index..inner_index]
      inner_index += 1
    end
    outer_index += 1
    inner_index = outer_index
  end
  max_sum = subarrays.first.sum
  max_index = 0
  subarrays.each_with_index do |subarr, idx|
    max_index = idx if subarrays[idx].sum > max_sum
    max_sum = subarrays[idx].sum if subarrays[idx].sum > max_sum
  end
  max_sum
end
