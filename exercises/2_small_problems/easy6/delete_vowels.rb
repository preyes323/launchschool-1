def remove_vowels(array)
  final_array = []
  array.each do |string|
    word_string = ''
    string.chars.each do |char|
      word_string << char if char.downcase.match(/[^aeiou]/) != nil
    end
    final_array << word_string
  end
  final_array
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
