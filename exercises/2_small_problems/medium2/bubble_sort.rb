def bubble_sort!(array)
  array.each_with_index do |item|
    0.upto(array.size-2) do |idx|
      first = array[idx]
      second = array[idx+1]
      array[idx] = second if first > second
      array[idx+1] = first if first > second
    end
  end
  array
end

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
