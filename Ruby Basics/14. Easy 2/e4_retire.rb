# Build a program that displays when the user will retire and how many years she has to work till retirement.
#
# What is your age? 30
# At what age would you like to retire? 70
#
# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

print "What is your age in years? : "
age_in_years = gets.chomp.to_i

print "When would you like to retire? : "
retirement_age = gets.chomp.to_i

this_year = Time.now.year
retirement_year = retirement_age - age_in_years + this_year

puts "It's 2016. You want to retire in #{retirement_year}"
puts "You only have #{retirement_age - age_in_years} years of work to go!"
