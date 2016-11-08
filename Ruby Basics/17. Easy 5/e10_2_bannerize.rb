# Bannerizer
# Write a method that will take a short line of text, and print it within a box.
# You may assume that the input will always fit in your terminal window.

def print_in_box(string)
  horizontal_line = "+#{'-' * (string.length + 2)}+"
  empty_line = "|#{' ' * (string.length + 2)}|"

  puts horizontal_line
  puts empty_line
  puts "| #{string} |"
  puts empty_line
  puts horizontal_line
  puts
end

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
