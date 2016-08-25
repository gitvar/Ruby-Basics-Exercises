# Given the array below, use loop to remove and print each name. Stop the loop once names doesn't contain any more elements.
# Keep in mind to only use loop, not while, until, etc.

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift until names.empty?
  break

  # OR:

  # puts names.pop
  # puts names.shift
  # break if names.size == 0
  # break if names.size == []
  # break if names.empty?
end

p names
