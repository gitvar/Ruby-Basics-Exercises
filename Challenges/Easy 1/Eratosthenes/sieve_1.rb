# Write a program that uses the Sieve of Eratosthenes to find all the primes from 2 up to a given number.

# To find all the prime numbers less than or equal to a given integer n by Eratosthenes' method:
#
# 1. Create a list of consecutive integers from 2 through n: (2, 3, 4, ..., n).
# 2. Initially, let p equal 2, the smallest prime number.
# 3. Enumerate the multiples of p by counting to n from 2p in increments of p, and mark them in the list (these will be 2p, 3p, 4p, ... ; the p itself should not be marked).
# 4. Find the first number greater than p in the list that is not marked. If there was no such number, stop. Otherwise, let p now equal this new number (which is the next prime), and repeat from step 3.
#
# When the algorithm terminates, the numbers remaining not marked in the list are all the primes below n.

class Sieve
  attr_reader :number
  attr_accessor :bool_array

  def initialize(num)
    @number = num
    @bool_array = [true] * number
  end

  def primes
    idx = 1
    p = 2
    while p < Math.sqrt(number)
      while (p * idx) < number
        idx += 1
        bool_array[p * idx] = false
      end
      idx = 1
      p += 1
    end
    bool_array.each_index.select { |i| bool_array[i] }.drop(2)
  end
end
# p Sieve.new(10).primes
