class PerfectNumber
  class << self # declare a private class method
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
