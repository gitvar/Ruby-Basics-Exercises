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
  # require 'pry'
  include OCR_Strings

  OCR_ARRAY = [ZERO, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE]

  def initialize(input_text)
    @text = input_text
    verify_size unless multiline
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

  def verify_size
    raise ArgumentError, "Input text size is wrong!" unless @text.split(//).count("\n") % 3 == 0
  end

  def multiline
    @text.include?("\n\n")
  end

  def strip_spaces(str)
    str.sub!("   ","")
    3.times { str.sub!("_ \n", "_\n") }
    str
  end

  def read_single_number(str)
    str = strip_spaces(str)
    OCR_ARRAY.each_with_index do |ocr, idx|
      return idx.to_s if str.eql?(ocr)
    end
    '?'
  end

  def break_into_single_numbers(str)
    idx = 0
    rows_hash = { 0 => [], 1 => [], 2 => [] }
    numbers_hash = { 0 => "" }

    str.split(//).each do |e|
      rows_hash[idx] << " " if rows_hash[idx][-1] == "_" && e == "\n"
      rows_hash[idx] << e unless e == "\n"
      idx += 1 if e == "\n"
    end

    0.upto((rows_hash[0].size / 3) - 1) do |number|
      arr = []
      0.upto(2) do |row|
        arr << rows_hash[row].slice!(0..2)
        arr << "\n"
      end
      numbers_hash[number] = arr.flatten.join
    end
    numbers_hash
  end

  def the_numbers(numbers_hash)
    numbers = numbers_hash.each_value.map do |ocr_num_str|
      read_single_number(ocr_num_str)
    end
    numbers.join
  end

  def read_multiple_numbers
    if multiline
      numbers = ""
      arr = @text.split(/\n\n/)
      no_of_lines = arr.size - 1
      arr.each_with_index { |line, idx| line << "\n" unless idx == no_of_lines }
      arr.each_with_index do |line, idx|
        numbers_hash = break_into_single_numbers(line)
        numbers << the_numbers(numbers_hash)
        numbers << "," unless idx == no_of_lines
      end
      numbers
    else
      numbers_hash = break_into_single_numbers(@text)
      the_numbers(numbers_hash)
    end
  end
end
