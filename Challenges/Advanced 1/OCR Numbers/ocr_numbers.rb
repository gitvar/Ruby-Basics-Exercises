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

# NOTE: All the above is done with the individual numbers 0 to 9 recognized.

# Step 2:
# Update your program to recognize multi-character binary strings, replacing garbled numbers with ?
#
# Possible Solutions:
# 1. Break strings up and build single 3 x 4 chars. Then match them up.
# Questions:
# a. How to recognize multi-char string?
# b. How to break up a multi-char string correctly?

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
    @text = input_text
    verify_input_size(@text)
    @hash = {}
  end

  def convert
    OCR_ARRAY.each_with_index do |ocr, idx|
      return idx.to_s if @text.eql?(ocr)
    end
    return '?'
  end

  private

  def verify_input_size(input_text)
    raise ArgumentError, "Input text size is wrong!" unless input_text.split(//).count("\n") == 3
  end
end

# text = <<-NUMBER.chomp
#  _
# |_|
# |_|
#
# NUMBER
#
# puts OCR.new(text).convert
