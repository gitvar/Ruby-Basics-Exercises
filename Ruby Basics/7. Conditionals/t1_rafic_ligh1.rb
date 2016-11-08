# In the code below, stoplight is randomly assigned as 'green', 'yellow', or
# 'red'.
# Write a case statement that prints "Go!" if stoplight equals 'green', "Slow
# down!" if stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'.

stoplight = %w(green yellow red).sample

message = case stoplight
          when 'green'
            'Go!'
          when 'yellow'
            'Slow down!'
          else
            'Stop'
          end

puts message
