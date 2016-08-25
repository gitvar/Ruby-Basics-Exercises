# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

def century(year)
  postfix_arr = %w(st nd rd th)

  century_number, century_modulus = year.divmod(100)
  century_number += 1 unless century_modulus == 0
  postfix_index = century_number % 20 # Because the 'teens' don't conform!

  postfix_str = postfix_index < 4 ? postfix_arr[postfix_index - 1] : 'th'
  "#{century_number.to_s + postfix_str}"
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
puts century(1652) == '17th'
puts century(1001) == '11th'
puts century(11210101) == '112102nd'
puts century(928)
