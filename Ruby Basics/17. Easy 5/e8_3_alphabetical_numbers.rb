# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

require 'numbers_and_words'
#p 23.to_words # tests good

def alphabetic_number_sort(array)
  sorted_number_names = Hash.new
  for num in array
    sorted_number_names[num.to_words] = num
  end
  sorted_number_names.sort.to_h.values
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
