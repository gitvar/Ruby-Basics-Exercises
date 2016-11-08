# Series
# ======
# Write a program that will take a string of digits and give you all the
# possible consecutive number series of length n in that string.
# For example, the string "01234" has the following 3-digit series:
# - 012
# - 123
# - 234
#
# And the following 4-digit series:
# - 0123
# - 1234
#
# string = 0, 1, 2, 3, 4
# result = [[0, 1], [1, 2], [2, 3], [3, 4]]
#
class Series
  def initialize(str)
    @str = str
  end

  def group_array_elements(array, no_of_elements)
    result_array = []
    outer_index = 0
    loop do
      inner_array = []
      inner_index = outer_index
      no_of_elements.times do
        inner_array << array[inner_index]
        inner_index += 1
      end
      result_array << inner_array
      outer_index += 1
      break if inner_index >= array.size
    end
    result_array
  end

  def slices(no_of_elements)
    raise ArgumentError, "'no_of_elements'" if no_of_elements > @str.length
    one_dimensional_array = @str.chars.map(&:to_i)
    group_array_elements(one_dimensional_array, no_of_elements)
  end
end

# series = Series.new('01234')
# p series.slices(4)
