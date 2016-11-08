# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongs the first 5 numbers.

# After seeing E-Lynn Yap's answer:
array = []

%w(1st 2nd 3rd 4th 5th last).each do |number_string|
  print "==> Enter the #{number_string} number: "
  array << gets.chomp.to_i
end

last_number = array.pop
appears_or_not = array.include?(last_number) ? "appears" : "does not appear"

puts "The number #{last_number} #{appears_or_not} in #{array}."
