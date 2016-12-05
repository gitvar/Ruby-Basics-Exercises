# The Greek mathematican Nicomachus devised a classification scheme for natural numbers, identifying each as belonging uniquely to the categories of abundant, perfect, or deficient. A perfect number equals the sum of its positive divisors — the pairs of numbers whose product yields the target number, excluding the number itself.
#
#     Perfect: Sum of factors = number
#     Abundant: Sum of factors > number
#     Deficient: Sum of factors < number
#
# The Aliquot sum is defined as the sum of the factors of a number not including the number itself.
# Examples
#
#     6 is a perfect number because its divisors are 1, 2, 3 and 6 = 1 + 2 + 3.
#     28 is perfect number because 28 = 1 + 2 + 4 + 7 + 14.
#     Prime numbers 7, 13, etc are Deficient by the Nicomachus classificaton.
#
# Write a program that can tell if a number is perfect, abundant or deficient numbers.

class PerfectNumber
  class << self # Declare a private class method in order to:
                # set the visibility of methods defined on the singleton class
                # of the current object.
    def classify(num)
      raise RuntimeError, 'Number must be positive' unless num.positive?
      raise RuntimeError, 'Number must be an Integer' unless num.to_i == num

      return 'deficient' if num == 1
      %w(perfect abundant deficient)[aliquot_sum(num) <=> num]
    end

    private

    def aliquot_sum(num)
      (1..num / 2).select { |i| i if (num % i).zero? }.reduce(:+)
    end
  end
end
