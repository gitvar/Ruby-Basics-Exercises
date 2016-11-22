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
    @arr = str.chars.map(&:to_i)
  end

  def slices(size)
    raise ArgumentError, "argument out of range" if size > @arr.size
    @arr.each_cons(size).map { |arr| arr }
  end
end

# series = Series.new('01234')
# p series.slices(2)
