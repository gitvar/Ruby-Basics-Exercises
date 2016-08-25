# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.
# Note: 1 square meter == 10.7639 square feet
# Do not worry about validating the input at this time.

METERS_TO_FEET = 10.7639

def format_number(num)
  format('%4.2f', num)
end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

sq_meters = (length * width).round(1)
sq_feet = format_number(sq_meters.to_f * METERS_TO_FEET)

puts "The area of the room is #{sq_meters} square meters (#{sq_feet} square feet)."
