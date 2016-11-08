# Use Hash#each to iterate over numbers and print each element's key/value pair.

# Expected output:
# A high number is 100.
# A medium number is 50.
# A low number is 10.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each { |key, value| puts "A #{key} number is #{value}."}
