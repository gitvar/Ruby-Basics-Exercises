# Right Triangles

# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# triangle(5)
#
#     *
#    **
#   ***
#  ****
# *****
def triangle(num, side_up = 1)
  case side_up
  when 1 then 1.upto(num) { |n| puts "#{"*" * n}".ljust(num) }
  when 2 then 1.upto(num) { |n| puts "#{"*" * (num - (n - 1))}" }
  when 3 then 1.upto(num) { |n| puts "#{"*" * (num - (n - 1))}".rjust(num) }
  else        1.upto(num) { |n| puts "#{"*" * n}".rjust(num) }
  end
end

triangle(4, 1)
puts
triangle(4, 2)
puts
triangle(4, 3)
puts
triangle(4, 4)
