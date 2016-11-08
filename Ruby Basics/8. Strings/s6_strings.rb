# Using the following code, split the value of alphabet by individual characters and print each character.

alphabet = 'abcdefghijklmnopqrstuvwxyz'

alphabet.each_char { |letter| puts letter }
# or
alphabet.chars.each { |letter| puts letter }
# or
alphabet.split(//).each { |letter| puts letter }
# or
puts alphabet.chars
