# Cute angles
#
# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes, and seconds. You should use a degree symbol (˚) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. There are 60 minutes in a degree, and 60 seconds in a minute.

def dms(angle)
  while angle < 0
    angle += 360
  end
  n_times_360 = (angle / 360).to_i
  degrees = n_times_360 <= 1 ? angle.to_i : (angle - (n_times_360 * 360)).to_i
  fraction = (angle - angle.to_i).round(6)
  minutes = (fraction * 60).to_i
  seconds = (((fraction * 60) - minutes) * 60).round(2).to_i
  %(#{degrees}°#{format("%02d", minutes)}'#{format("%02d", seconds)}")
end

puts dms(-76.73) == %(283°16'12")
puts dms(-796.73) == %(283°16'12")
puts dms(734.34) == %(14°20'24")
puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
