# ocr_numbers.rb
#
# OCR Numbers
#
# Write a program that, given a 3 x 4 grid of pipes, underscores, and spaces, can determine which number is represented, or whether it is garbled.
#
# Step One
#
# To begin with, convert a simple binary font to a string containing 0 or 1. The binary font uses pipes and underscores, four rows high and three columns wide.
#
#  _   #
# | |  # zero.
# |_|  #
#      # the fourth row is always blank
#
# Is converted to "0"
#
#    #
# |  # one.
# |  #
#    # (blank fourth row)
#
# Is converted to "1"
#
# Requirements/Specifications:
# 1. If the input is the correct size, but not recognizable,
# your program should return '?'.
# 2. If the input is the incorrect size, your program should return an error.

# My notes:
# 1. Input is a 3 x 4 'grid'.
# 2. Let's make it an Array of 4 strings, each string 3 characters in length and each element representing a row in the 'grid'.
# For example:

module OCR_Strings
  ZERO = <<-NUMBER.chomp
 _
| |
|_|

  NUMBER

  ONE = <<-NUMBER.chomp

  |
  |

  NUMBER

  TWO = <<-NUMBER.chomp
 _
 _|
|_

  NUMBER

  THREE = <<-NUMBER.chomp
 _
 _|
 _|

  NUMBER

  FOUR = <<-NUMBER.chomp

|_|
  |

  NUMBER

  FIVE = <<-NUMBER.chomp
 _
|_
 _|

  NUMBER

  SIX = <<-NUMBER.chomp
 _
|_
|_|

  NUMBER

  SEVEN = <<-NUMBER.chomp
 _
  |
  |

  NUMBER

  EIGHT = <<-NUMBER.chomp
 _
|_|
|_|

  NUMBER

  NINE = <<-NUMBER.chomp
 _
|_|
 _|

  NUMBER
end

class OCR
  include OCR_Strings

  OCR_ARRAY = [ZERO, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE]

  def initialize(input_text)
    @text = check(input_text)
    @hash = {}
    initialize_hash
  end

  def convert
    @hash.each do |key, value|
      return key.to_s if @text.eql?(value)
    end
    return "?"
  end

  private

  def check(text)
    text
  end

  def initialize_hash
    (0..9).each do |x|
      @hash[x] = OCR_ARRAY[x]
    end
  end
end
#
#
# text = <<-NUMBER.chomp
#  _
# | |
# |_|
#
# NUMBER
#
# puts OCR.new(text).convert
