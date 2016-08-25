# Print 5 random numbers:

numbers = [].fill(0..99) { |i| i }
count = 0

while count < 5
  puts numbers.sample
end
