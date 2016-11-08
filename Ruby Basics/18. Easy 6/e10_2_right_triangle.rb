# Right Triangles

# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# triangle(5)
#
#     *
#    **
#   ***
#  ****
# *****
def triangle(num, side_up = 'bottom_L')
  case side_up
  when 'bottom_L' then 1.upto(num) { |n| puts "#{"*" * n}".ljust(num) }
  when 'top_L'    then 1.upto(num) { |n| puts "#{"*" * (num - (n - 1))}" }
  when 'top_R'    then 1.upto(num) { |n| puts "#{"*"*(num-(n-1))}".rjust(num) }
  when 'bottom_R' then 1.upto(num) { |n| puts "#{"*" * n}".rjust(num) }
  else                                   puts "No such corner!"
  end
end

triangle(3, 'bottom_L')
puts
triangle(3, 'top_L')
puts
triangle(3, 'top_R')
puts
triangle(3, 'bottom_R')
puts
triangle(3, 'bottom_middle')
