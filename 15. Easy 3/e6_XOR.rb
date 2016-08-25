# write a method named `xor` that takes two arguments, and returns `true` if exactly one of its arguments is true, `false` otherwise.

# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

# XOR is not a short circuit operation since both values need to be evaluated.

def xor?(bool_1, bool_2)
  bool_1 == bool_2 ? false : bool_1 || bool_2
end

puts xor?(5.even?, 4.even?)
puts xor?(5.odd?, 4.odd?)
puts xor?(5.odd?, 4.even?)
puts xor?(5.even?, 4.odd?)
