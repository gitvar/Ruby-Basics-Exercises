# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

def short_long_short(str1, str2)
  # strA = str1.dup
  # strB = str2.dup

  # OR:

  strA = str1.clone
  strB = str2.clone

  # Both .dup and .clone provides strA and strB with different object ids.

  str1.length < str2.length ? str1 << str2 << strA : str2 << str1 << strB
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
