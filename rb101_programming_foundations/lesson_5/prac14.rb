hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# return an array containing the colors of the fruits
# and the sizes of the vegetables.
# The sizes should be uppercase and the colors should be capitalized.

a = hsh.each_with_object([]) do |(k, v), array|
  array << v[:colors].map {|item| item.capitalize}
  array << v[:size].upcase
end

p a
