names = ['Sally', 'Joe', 'Lisa', 'Henry']
loop do
  puts names[-1]
  names.delete_at(-1)
  break if names.size == 0
end
