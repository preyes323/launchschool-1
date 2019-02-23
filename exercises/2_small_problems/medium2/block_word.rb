SPELLING_LIST = {'b' => 'o',
                 'g' => 't',
                 'v' => 'i',
                 'x' => 'k',
                 'r' => 'e',
                 'l' => 'y',
                 'd' => 'q',
                 'f' => 's',
                 'z' => 'm',
                 'c' => 'p',
                 'j' => 'w',
                 'n' => 'a',
                 'h' => 'u'
                }

def block_word?(string)
  blocks = SPELLING_LIST.clone
  chars = string.downcase.chars
  chars.size.times do |idx|
    current_char = chars[idx]
    if blocks.values.include?(current_char) || blocks.keys.include?(current_char)
      blocks.delete_if {|k,v| k == current_char || v == current_char}
      next
    else return false
    end
  end
  true
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true
