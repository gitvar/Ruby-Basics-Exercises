# Atbash Cipher:

ALPHABET = ('a'..'z').to_a

def atbash(char)
  idx = ALPHABET.index(char)
  ALPHABET[25-idx]
end

def cipher(string)
  arr = string.split(//)
  arr.map { |char| atbash(char) }.join
end

str = 'mindblowingly'
puts "#{str} => #{cipher('mindblowingly')}"
