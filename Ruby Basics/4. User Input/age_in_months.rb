# Write a program that asks the user for their age in years, and then converts that age to months.
#
# Examples:
#
# $ ruby age.rb
# >> What is your age in years?
# 35
# You are 420 months old.
age_in_years = ''

loop do
  puts "What is your age in years?"
  age_in_years = gets.chomp

  break if age_in_years.to_i.to_s == age_in_years

  puts "Please enter integers only."
end

puts "You are #{age_in_years.to_i * 12} months old."
