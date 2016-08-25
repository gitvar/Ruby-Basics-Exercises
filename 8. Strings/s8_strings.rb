# Using the following code, print true if colors includes the color 'yellow' and print false if it doesn't. Then, print true if colors includes the color 'purple' and print false if it doesn't.

colors = 'blue pink yellow orange boredom'

colors.include?('yellow') ? puts("true") : puts("false")
colors.include?('purple') ? puts("true") : puts("false")

puts colors.include?('red')
# => true

puts %w(blue pink yellow orange boredom).include?('red')
# => false
