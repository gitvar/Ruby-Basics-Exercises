#named full_name. Then, print the value of full_name.

first_name = 'John'
last_name = 'Doe'

full_name1 = first_name + ' ' + last_name
puts full_name1

full_name2 = "#{first_name} #{last_name}"
puts full_name2

full_name3 = ''
full_name3 << first_name << ' ' << last_name
puts full_name3
