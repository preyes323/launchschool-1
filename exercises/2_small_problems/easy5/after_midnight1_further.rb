SECONDS_PER_MINUTE = 60
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR
CURRENT_TIME = Time.new(2019, 01, 06, 0, 0, 0)

def time_of_day(delta_minutes)
  delta_seconds = delta_minutes * SECONDS_PER_MINUTE
  new_time = CURRENT_TIME + delta_seconds
  new_time.strftime("%A %H:%M")
end

puts time_of_day(-4231) == "Thursday 01:29"
