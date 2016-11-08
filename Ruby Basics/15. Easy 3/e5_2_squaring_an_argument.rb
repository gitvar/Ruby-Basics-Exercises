# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).
# What if we wanted generalize this method to a "power to the n" type method: cubed, to the 4th power, to the 5th, etc. How would we go about doing so while still using the `multiply` method?

# Further Exploration:
# I am assuming the question is: "n to the power n".

def multiply(n1, n2)
  n1 * n2
end

def to_the_power(n, power)
  result = 1
  (power / 2).times {result *= multiply(n, n)}
  result *= n if power.odd?
  result
end

puts to_the_power(2, 4)
puts to_the_power(3, 3)
puts to_the_power(4, 4)
puts to_the_power(5, 5)
puts to_the_power(6, 6)
puts to_the_power(8, 8)
