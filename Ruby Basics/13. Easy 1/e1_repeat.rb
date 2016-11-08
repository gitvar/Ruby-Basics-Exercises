# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.


def repeat1(string, number)
  number.times { |n| puts string }
end


def repeat2(string, number)
  number.times { puts string } # No iterator passed in.
end

repeat1('Hello', 3)
repeat2('Hello', 3)
