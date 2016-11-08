# The method below counts from 0 to 4. Modify the block so that it prints the current number and stops iterating when the current number equals 2.

5.times do |index|
  index < 3 ? (puts index) : break
end
# 0
# 1
# 2

# Without running this code, how many values will be printed?
puts
5.times do |index|
  puts index
  break if index == 4
end
# => 5
# 0
# 1
# 2
# 3
# 4

# Now, consider this code:
puts
5.times do |index|
  puts index
  break if index < 7
end
# => 1
# 0
