# ocr_numbers.rb

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
    verify_size(input_text)
    @text = input_text
    @single_number = true
  end

  def convert
    if @text.size <= 11
      read_single_number(@text)
    else
      @single_number = false
      read_multiple_numbers
    end
  end

  private

  def verify_size(input_text)
    raise ArgumentError, "Input text size is wrong!" unless input_text.split(//).count("\n") % 3 == 0
  end

  def strip_spaces(str)
    arr = str.split(//)
    puts "arr = #{arr}"
    if str[0..2] == "   "
      3.times { arr.shift }
    end
    if str[0..2] == " _ "
      arr.delete_at(2)
    end
    arr.join
  end

  def read_single_number(str)
    str = strip_spaces(str)
    p "str = #{str}"
    OCR_ARRAY.each_with_index do |ocr, idx|
      p "ocr = #{ocr}"
      # return idx.to_s if str.eql?(ocr)
      if str.eql?(ocr)
        p "ocr = #{ocr}"
        p "str = #{str}"
        return idx.to_s
      end
    end
    '?'
  end

  def break_into_single_numbers
    idx = 0
    rows_hash = { 0 => [], 1 => [], 2 => [] }
    numbers_hash = { 0 => [], 1 => []}

    @text.split(//).each do |e|
      rows_hash[idx] << " " if rows_hash[idx][-1] == "_" && e == "\n"
      rows_hash[idx] << e unless e == "\n"
      idx += 1 if e == "\n"
    end

    0.upto((rows_hash[0].size / 3) - 1) do |number|
      arr = []
      # puts "number = #{number}"
      0.upto(2) do |row|
        # puts "row = #{row}"
        arr << rows_hash[row].slice!(0..2)
        arr << "\n"
        # p arr
      end
      numbers_hash[number] = arr.flatten
    end
    numbers_hash
  end

  def identify_each_number(numbers_hash)
    numbers = numbers_hash.each_value.map do |v|
      read_single_number(v.join)
    end
    numbers.join
  end

  def read_multiple_numbers
    hash = break_into_single_numbers
    identify_each_number(hash)
  end
end

# zero = <<-NUMBER.chomp
#  _
# | |
# |_|
#
# NUMBER
# puts OCR.new(zero).convert
#
# one = <<-NUMBER.chomp
#
#   |
#   |
#
# NUMBER
# puts OCR.new(one).convert
#
# text_5 = <<-NUMBER.chomp
#  _
# |_
#  _|
#
# NUMBER
# puts OCR.new(text_5).convert
#
# text_10 = <<-NUMBER.chomp
#     _
#   || |
#   ||_|
#
# NUMBER
# puts OCR.new(text_10).convert
#
# text_9 = <<-NUMBER.chomp
#  _
# |_|
#  _|
#
# NUMBER
# puts OCR.new(text_9).convert
#
# big_num = <<-NUMBER.chomp
#     _  _     _  _  _  _  _  _
#   | _| _||_||_ |_   ||_||_|| |
#   ||_  _|  | _||_|  ||_| _||_|
#
# NUMBER
# puts OCR.new(big_num).convert

# big_num = <<-NUMBER.chomp
#     _  _
#   | _| _|
#   ||_  _|
#
# NUMBER
# puts OCR.new(big_num).convert
#
# num_1213 = <<-NUMBER.chomp
#     _     _
#   | _|  | _|
#   ||_   | _|
#
# NUMBER
# puts OCR.new(num_1213).convert
