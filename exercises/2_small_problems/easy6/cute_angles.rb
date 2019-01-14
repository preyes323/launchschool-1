# coding: utf-8
DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60

def dms(float)
  absolute_float = float.abs
  wholedegree = absolute_float.divmod(1)[0]
  remainder = (absolute_float - wholedegree).round(10)
  minutes = (remainder * MINUTES_PER_DEGREE).divmod(1)[0]
  seconds = ((remainder * MINUTES_PER_DEGREE).divmod(1)[1] * SECONDS_PER_MINUTE).round(0)
  if float < 0
    %Q(-#{wholedegree}#{DEGREE}#{format('%02d', minutes)}'#{format('%02d', seconds)}")
  else
    %Q(#{wholedegree}#{DEGREE}#{format('%02d', minutes)}'#{format('%02d', seconds)}")
  end
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
puts dms(361)
puts dms(-76.73)
