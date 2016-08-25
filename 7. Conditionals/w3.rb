# Write an if statement that prints "The sun is so bright!" if sun equals visible. Also, write an unless statement that prints "The clouds are blocking the sun!" unless sun equals visible.
# When writing these statements, take advantage of Ruby's expressiveness and append each condition to its corresponding output.

sun = ['visible', 'hidden'].sample

puts "The sun is so bright!" if sun == 'visible'
puts "The clouds are blocking the sun!" unless sun == 'visible'
