def add_leading_zeros(int)
  case
  when int.digits.size < 2 then "0#{int}"
  else "#{int}"
  end
end

def convert_multi_day_values(minutes)
  new_value = 0
  if minutes.abs >= 1440
    day_multiples = minutes.abs/1440
    new_value = minutes.abs - (day_multiples*1440)
    if minutes > 0
      new_value
    elsif minutes < 0
      1440 - new_value
    elsif minutes == 0
      0
    end
  else
    if minutes < 0
      1440 - minutes.abs
    else
      minutes
    end
  end
end

def calculate_time_difference(minutes)
  if minutes > 0
    hours_value = minutes / 60
    minutes_value = minutes - (hours_value * 60)
    "#{add_leading_zeros(hours_value)}:#{add_leading_zeros(minutes_value)}"
  elsif minutes < 0
    hours_value = 23 - minutes.abs / 60
    minutes_value = 60 - (minutes.abs - ((minutes.abs / 60)*60))
    "#{add_leading_zeros(hours_value)}:#{add_leading_zeros(minutes_value)}"
  else
    "00:00"
  end
end

def time_of_day(minutes)
  calculate_time_difference(convert_multi_day_values(minutes))
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
