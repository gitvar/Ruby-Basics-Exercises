# Reversed Arrays (Part 1)
#
# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed in to this method. The return value should be the same Array object.
#
# You may not use Array#reverse or Array#reverse!.

# NOTE: BEST SOLUTION!!!
def reverse!(array)
  rev_array = []
  len = array.size
  len.times { |_| rev_array.push array.pop }
  array.replace rev_array
end

list = [1,2,3,4]
puts "list = #{list}"
result = reverse!(list) # => [4,3,2,1]
puts "result = #{result}"
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = ['abc']
puts reverse!(list) # => ["abc"]
puts list == ["abc"]

list = []
puts reverse!([]) # => []
puts list == []

list = ['abc']
puts reverse!(list) # => ["abc"]
puts list == ["abc"]


list = []
puts reverse!([]) # => []
puts list == []
