# str_to_sub.rb

def str_to_sub(str)
  len = str.size
  arr_strings = []
  len.times do |start|
    arr_strings << str.split(//).each_index.map { |idx| str.slice(start..(len - (len - idx))) }
  end
  arr_strings.map { |arr| arr.map { |word| word unless word.empty? }.compact }.flatten
end

p str_to_sub("abcde")
