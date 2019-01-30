CHARSET = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)

def gen_uuid
  uuid = ""
  first = 8.times { uuid += CHARSET.sample }
  uuid += "-"
  second = 4.times { uuid += CHARSET.sample }
  uuid += "-"
  third = 4.times { uuid += CHARSET.sample }
  uuid += "-"
  fourth = 4.times { uuid += CHARSET.sample }
  uuid += "-"
  fifth = 12.times { uuid += CHARSET.sample }
  uuid
end

puts gen_uuid
