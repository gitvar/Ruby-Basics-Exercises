# After Midnight (Part 3)
#
# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.
#
# Write two methods that:
# 1. Each take a time of day in 24 hour format and,
# 2. Return the number of minutes before and after midnight, respectively.
# 3. Both methods should return a value in the range 0..1439.
#
# Disregard Daylight Savings and Standard Time and other irregularities.
#
# This time using ruby's Date and Time classes.

require 'time'

MINUTES_IN_HOUR = 60
MINUTES_IN_DAY = 1440

def after_midnight(time_string)
  # Time.parse(time_string) => makes a Time object of string
  time = Time.parse(time_string)
  time.hour * MINUTES_IN_HOUR + time.min
end

def before_midnight(time_string)
  (MINUTES_IN_DAY - after_midnight(time_string)) % MINUTES_IN_DAY
end

puts '00:00'
puts after_midnight('00:00') #== 0
puts before_midnight('00:00') #== 0
puts
puts '12:34'
puts after_midnight('12:34') #== 754
puts before_midnight('12:34') #== 686
puts
puts '24:00'
puts after_midnight('24:00') #== 0
puts before_midnight('24:00') #== 0
puts
puts '23:59'
puts after_midnight('23:59') #== 1439
puts before_midnight('23:59') #== 1
