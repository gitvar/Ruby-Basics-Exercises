# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Chemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value } # Same as: array2[idx] = array1[idx]
array1.each { |value| value.upcase! if value.start_with?('C') }

puts array1.object_id
puts array2.object_id
puts
array1.each { |name| puts name.object_id }
puts
array2.each { |name| puts name.object_id }
