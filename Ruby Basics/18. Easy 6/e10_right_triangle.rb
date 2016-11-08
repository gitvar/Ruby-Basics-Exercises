# Right Triangles

# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# triangle(5)
#
#     *
#    **
#   ***
#  ****
# *****
def triangle(num)
  1.upto(num) { |n| puts "#{"*" * n}".rjust(num) }
end

triangle(5)
puts
triangle(9)
