# Letter Swap
# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word is swapped.
#
# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

def swap_first_last_characters(a, b)
  a, b = b, a
end

def swap(words)
  result = words.split.map do |word|
    word[0], word[-1] = swap_first_last_characters(word[0], word[-1])
    word
  end
  result.join(' ')
end

puts swap('Oh what a wonderful day it is') == "hO thaw a londerfuw yad ti si"
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
