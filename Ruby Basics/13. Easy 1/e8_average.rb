# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers.

def average(array)
  format('%4.2f', array.reduce(:+).to_f / array.size).to_f
end

puts average([1, 5, 87, 45, 8, 8]) == 25.67
puts average([9, 47, 23, 95, 16, 52]) == 40.33
puts average([9, 47, 23, 95.4, 16.65, 57.43, 32.01]) == 40.07
