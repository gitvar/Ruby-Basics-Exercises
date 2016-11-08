# Using the following code, delete the key :mileage and its associated value from car.

car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}

p car
result = car.delete(:mileage) { |e1| "#{e1} not found!" }
puts result

p car

result = car.delete(:make) { |e1| "Hash key '#{e1}' not found!" }
puts result
p car

puts "The car's color is: #{car[:color]}."
