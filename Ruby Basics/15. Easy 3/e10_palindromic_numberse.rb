# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

def palindromic_number?(num)
  num.to_s.delete('^0-9') == num.to_s.delete('^0-9').reverse
end

puts palindromic_number?(3454300) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
