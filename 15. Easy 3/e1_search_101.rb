# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongs the first 5 numbers.

def appears_or_not(arr)
  last_num = arr.pop # This mutates the caller (array)!
  arr.include?(last_num) ? "appears" : "does not appear"
end

def num_and_postfix(number)
  postfix = case number
            when 1 then 'st'
            when 2 then 'nd'
            when 3 then 'rd'
            when 6 then 'last'
            else        'th'
            end
  number < 6 ? number.to_s << postfix : postfix
end

array = []

6.times do |n|
  print "==> Enter the #{num_and_postfix(n + 1)} number: "
  num = gets.chomp.to_i
  array << num
end

puts "The number #{array.last} #{appears_or_not(array)} in #{array.inspect}."
