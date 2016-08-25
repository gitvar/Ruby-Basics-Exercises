# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

# => Teddy is 69 years old!

def age_in_years_1
  rand(20..200)
end

def age_in_years_2
  (20..200).to_a.sample
end

5.times { puts "Teddy is #{age_in_years_1} years old!" }
puts
5.times { puts "Teddy is #{age_in_years_2} years old!" }
