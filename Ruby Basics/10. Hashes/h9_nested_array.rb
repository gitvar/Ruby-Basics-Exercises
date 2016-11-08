# Rewrite car as a nested array containing the same key-value pairs.

car_hash = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}

car_array = [
  [:type, 'sedan'],
  [:color, 'blue'],
  [:year, 2003]
]

print "car_hash = "
p car_hash
print "The car's color is: "
puts car_hash[:color]

puts

print "car_array = "
p car_array
print "The car's color is: "
puts car_array[1][1]

# Output:
# car_hash = {:type=>"sedan", :color=>"blue", :year=>2003}
# The car's color is: blue
#
# car_array = [[:type, "sedan"], [:color, "blue"], [:year, 2003]]
# The car's color is: blue
