# After Midnight (Part 2)
#
# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.
#
# Write two methods that:
# 1. Each take a time of day in 24 hour format and,
# 2. Return the number of minutes before and after midnight, respectively.
# 3. Both methods should return a value in the range 0..1439.
#
# Disregard Daylight Savings and Standard Time and other irregularities.
# You may not use ruby's Date and Time methods.

MINUTES_IN_HOUR = 60
MINUTES_IN_DAY = 1440

def hours_to_minutes(time)
  time[0..1].to_i * MINUTES_IN_HOUR
end

def minutes(time)
  time[3..4].to_i
end

def after_midnight(time)
  (hours_to_minutes(time) + minutes(time)) % MINUTES_IN_DAY
end

def before_midnight(time)
  (MINUTES_IN_DAY - after_midnight(time)) % MINUTES_IN_DAY
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
