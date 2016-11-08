# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

# input:
# Please write word or multiple words: walk
# output:
# There are 4 characters in "walk".
#
# input:
# Please write word or multiple words: walk, don't run
# output:
# There are 13 characters in "walk, don't run".

print "Please write a word or multiple words: "
user_string = gets.chomp

# number_of_chars = user_string.gsub(/\s/, '').length # \s -> white space chars.
# number_of_chars = user_string.delete(' ').length
# number_of_chars = user_string.scan(/\S/).length # \S -> non-white space chars.
number_of_chars = user_string.count("^ ")

puts "There are #{number_of_chars} characters in \"#{user_string}\"."
