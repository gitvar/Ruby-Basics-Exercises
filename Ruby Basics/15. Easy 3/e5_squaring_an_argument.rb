# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).
# What if we wanted generalize this method to a "power to the n" type method: cubed, to the 4th power, to the 5th, etc. How would we go about doing so while still using the `multiply` method?

# Further Exploration:

def multiply(n1, n2)
  n1 * n2
end

def to_the_power(num, power)
  if power.even?
    multiply(num, num) ** (power / 2)
  else
    num * multiply(num, num) ** (power / 2)
  end
end

puts to_the_power(2, 4)
puts to_the_power(2, 8)
puts to_the_power(3, 1)
puts to_the_power(3, 4)
