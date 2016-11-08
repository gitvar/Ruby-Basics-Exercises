# Write a method that computes the sum of all numbers between 1 and some other number that are a multiple of 3 or 5. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
# You may assume that the number passed in is an integer greater than 1.

def multisum(num)
  return 0 if num < 3

  multiples_3 = ((3..num).step 3).to_a
  multiples_5 = ((5..num).step 5).to_a

  return (multiples_3 << multiples_5).flatten.compact.uniq.inject(:+)
end

puts multisum(2)
puts multisum(3) # == 3
puts multisum(5) # == 8
puts multisum(10) # == 33
puts multisum(20) # == 98
puts multisum(1000) # == 234168
