def doubler(start)
  puts start * 2
  if start < 10
    doubler(start * 2)
  end
end
