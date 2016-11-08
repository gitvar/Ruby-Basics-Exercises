# Bannerizer
# Write a method that will take a short line of text, and print it within a box.
# You may assume that the input will always fit in your terminal window.

def print_line(str, num = 1)
  num.times { print str}
end

def print_top_or_bottom(string)
  print_line('+-')
  print_line('-', string.length)
  print_line('-+')
  puts
end

def print_blank_line(length)
  print "| "
  print_line(" ", length)
  print " |"
  puts
end

def print_string(string)
  print "| "
  print string
  print " |"
  puts
end

def print_in_box(string)
  print_top_or_bottom(string)
  print_blank_line(string.length)
  print_string(string)
  print_blank_line(string.length)
  print_top_or_bottom(string)
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
