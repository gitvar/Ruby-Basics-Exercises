# Given the following code, use Array#each to print the plural of each word in words.

words = 'car human elephant airplane'

words.split(' ').each { |word| puts word + 's' }
# or
words.split(/\s/).each { |word| puts word + 's' }
# or
words.split(/ /).each { |word| puts word + 's' }
