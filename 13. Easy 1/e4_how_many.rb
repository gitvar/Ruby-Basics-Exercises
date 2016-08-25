# Write a method that counts the number of occurrences of each element in a given array.
# Once counted, print each element alongside the number of occurrences.
# Expected output:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(vehicles)
  uniq_vehicles = vehicles.uniq
  uniq_vehicles.each { |vehicle| puts "#{vehicle} => #{vehicles.count(vehicle)}" }
end

count_occurrences(vehicles)
