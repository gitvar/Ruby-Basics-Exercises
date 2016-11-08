# Given a string that consists of some words and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).
# Further Exploration
# If you originally wrote this method with regular expressions, try writing it without regular expressions.

ALPHABET = ('A'..'z').to_a

def cleanup(string)
  string.split('').map do |char|
    ALPHABET.include?(char) ?  char : ' '
  end.join.squeeze(' ')
end

p cleanup("---what's my +*& line?") #== ' what s my line '
# p cleanup("---whAt's my +*& Line?") #== ' whAt s my Line '
