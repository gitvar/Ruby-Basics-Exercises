# secret_handshake.rb

# Write a program that will:
# 1. Take a decimal number as input.
# 2. Convert this decimal number to the appropriate sequence of
# events for a secret handshake.

# The handshakes are:
# a.  1 = wink (1)
# b.  10 = double blink (2)
# c.  100 = close your eyes (4)
# d.  1000 = jump (8)
# e.  10000 = Reverse the order of operations in the secret handshake (16)

# Example 1:
# handshake = SecretHandshake.new 9
# handshake.commands # => ["wink","jump"]

# Example 2:
# handshake = SecretHandshake.new "11001"
# handshake.commands # => ["jump","wink"]

# Note:
# Strings specifying an invalid binary value should compute to 0.

# Bennie's Notes:
# ===============

# Allowed Input:
# -> Decimal Number to be converted to binary.
# => String (assumed to be binary) so convertion process not needed.

# Output:
# -> Format = array of strings.
# -> Empty array if input not valid (example input = "this is wrong")

class SecretHandshake
  SECRET_SHAKE = { 1 => 'wink',
                   2 => 'double blink',
                   4 => 'close your eyes',
                   8 => 'jump' }.freeze

  def initialize(input)
    @handshake_value = determine(input)
  end

  def commands
    return [] unless @handshake_value
    secret_shake_array = []
    SECRET_SHAKE.each_key do |key|
      secret_shake_array << SECRET_SHAKE[key] if key & @handshake_value == key
    end
    secret_shake_array.reverse! if (@handshake_value & 16) == 16
    secret_shake_array
  end

  private

  def determine(input)
    if input.is_a?(String)
      nil unless string_valid?(input)
      input.to_i(2) # Convert binary string to decimal value.
    else
      input
    end
  end

  def string_valid?(str) # Only '1's or '0's allowed.
    str.codepoints.all? { |num| [48, 49].include?(num) }
  end
end

# The handshakes are:
# a.  1 = wink (1)
# b.  10 = double blink (2)
# c.  100 = close your eyes (4)
# d.  1000 = jump (8)
# e.  10000 = Reverse the order of operations in the secret handshake (16)
#
# my_shake = SecretHandshake.new('1000')
# p my_shake.commands
# my_shake = SecretHandshake.new("10")
# p my_shake.commands
# my_shake = SecretHandshake.new("111")
# p my_shake.commands
# my_shake = SecretHandshake.new("bla")
# p my_shake.commands
# my_shake = SecretHandshake.new(2)
# p my_shake.commands
# my_shake = SecretHandshake.new(19)
# p my_shake.commands
