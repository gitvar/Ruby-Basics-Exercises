DEC_INT_STRINGS = %w(0 1 2 3 4 5 6 7 8 9).freeze

dec_int_hash = {}
DEC_INT_STRINGS.each_with_index { |e, i| dec_int_hash[e] = i }
DEC_HASH = dec_int_hash.freeze

def dec_string_to_signed_dec_integer(str)
  str_array = str.chars

  if str_array.first == '-'
    str_array.shift
    sign = -1
  elsif str_array.first == '+'
    str_array.shift
    sign = 1
  else
    sign = 1
  end

  rslt = 0
  len = str_array.size - 1
  str_array.each_with_index { |e, i| rslt += (DEC_HASH[e] * 10**(len-i))}.join
  rslt * sign
end

puts dec_string_to_signed_dec_integer('4321') == 4321
puts dec_string_to_signed_dec_integer('-570') == -570
puts dec_string_to_signed_dec_integer('+100') == 100
