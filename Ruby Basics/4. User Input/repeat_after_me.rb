# Write a program that asks the user to type something in, after which your program should simply display what was entered.

# $ ruby repeater.rb
# >> Type anything you want:
# This is what I typed.
# This is what I typed.

puts ">> Type anything you want:"
user_input = gets.chomp
puts user_input
