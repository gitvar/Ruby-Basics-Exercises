result = loop do
  puts ">> Do you want me to print something? (y/n)"
  user_input = gets.chomp.downcase

  break user_input if user_input == 'y' || user_input == 'n'

  puts ">> Invalid input! Please enter y or n"
end

puts "something" if result == 'y'
