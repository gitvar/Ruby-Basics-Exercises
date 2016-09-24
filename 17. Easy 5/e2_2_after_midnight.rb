# After Midnight (Part 2)
# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.
# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.
# Disregard Daylight Savings and Standard Time and other complications.
# You may NOT use ruby's Date and Time classes.

# How would you approach this problem if you were allowed to use ruby's `Date` and `Time` classes? Suppose you also needed to consider the day of week? (Assume that `delta_minutes` is the number of minutes before or after midnight between Saturday and Sunday; in such a method, a delta_minutes value of -4231 would need to produce a return value of `Thursday 01:29`.)

# Using the Time and Date classes:

MINUTES_IN_A_DAY = 24 * 60

def time_of_day(num)
  reference_time = Time.new(2016, 9, 18, 00, 00)

  number_of_days = num.abs / MINUTES_IN_A_DAY
  hour = (num.abs / 60) % 24
  minute = num.abs % 60

  if num >= 0
    day = reference_time.day + number_of_days
  else # if num < 0
    day = reference_time.day - (1 + number_of_days)
    hour = 23 - hour
    minute = 60 - minute
  end

  day_and_time = Time.new(2016, 9, day, hour, minute)
  day_and_time.strftime("%A %H:%M")
end

puts time_of_day(0) == "Sunday 00:00"
puts time_of_day(-3) == "Saturday 23:57"
puts time_of_day(-25) == "Saturday 23:35"
puts time_of_day(35) == "Sunday 00:35"
puts time_of_day(-1437) == "Saturday 00:03"
puts time_of_day(3000) == "Tuesday 02:00"
puts time_of_day(800) == "Sunday 13:20"
puts time_of_day(-4231) == "Thursday 01:29"
