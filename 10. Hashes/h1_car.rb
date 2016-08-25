# Create a hash that contains the following data and assign it to a variable named car.

# type 	color 	mileage
# sedan 	blue 	80_000

car = { type: 'sedan', color: 'blue', mileage: 80_000 }
bakkie = { 'type' => 'double cab', 'color' => 'white', 'mileage' => 120_000 }

# My preference: symbol with rocket.
truck = { :type => '10 ton', :color => 'red', :mileage => 800_000 }

p car
p bakkie
p truck

puts

puts "Car's color: #{car[:color]}."
puts "Bakkie's milage: #{bakkie['mileage']}"
puts "Truck's type: #{truck[:type]}"
