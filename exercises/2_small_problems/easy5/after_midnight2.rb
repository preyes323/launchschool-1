MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440

def after_midnight(hour_string)
  hours = hour_string[0..1].to_i
  mins = hour_string[3..4].to_i
  total_mins = (hours * MINUTES_PER_HOUR) + mins
  total_mins == MINUTES_PER_DAY ? 0 : total_mins
end

def before_midnight(hour_string)
  case hour_string
  when '00:00' then 0
  when '24:00' then 0
  else
    MINUTES_PER_DAY - after_midnight(hour_string)
  end
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
