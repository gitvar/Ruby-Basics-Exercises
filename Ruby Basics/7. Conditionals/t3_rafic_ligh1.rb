# Reformat the following case statement so that it only takes up 5 lines.

stoplight = ['green', 'yellow', 'red'].sample

signal = case stoplight
         when 'green'  then 'Go!'
         when 'yellow' then 'Slow down!'
         else               'Stop!'
         end

puts signal
