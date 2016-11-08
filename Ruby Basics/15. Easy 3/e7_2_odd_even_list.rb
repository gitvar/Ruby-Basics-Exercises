# Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# Further Exploration

# def even_or_oddities(list)
#   return_list = []
#   list.each_with_index { |item, idx| return_list << item if yield(idx) }
#   return_list
# end

# Or shorter:

# Or even better:

def even_or_oddities(list)
  list.select.with_index { |item, idx| item if yield(idx) }
end

p even_or_oddities([2, 3, 4, 5, 6]) { |n| n.even? } == [2, 4, 6]
p even_or_oddities([2, 3, 4, 5, 6]) { |n| n.odd? } == [3, 5]

p even_or_oddities(['abc', 'def']) { |n| n.even? } == ['abc']
p even_or_oddities(['abc', 'def']) { |n| n.odd? } == ['def']

p even_or_oddities([123]) { |n| n.even? } == [123]
p even_or_oddities([123]) { |n| n.odd? } == []

p even_or_oddities([]) { |n| n.even? } == []
p even_or_oddities([]) { |n| n.odd? } == []
