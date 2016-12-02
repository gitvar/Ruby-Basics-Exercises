class PerfectNumber2
    def self.classify(num)
      raise RuntimeError, 'Number must be positive' unless num.positive?
      raise RuntimeError, 'Number must be an Integer' unless num.to_i == num

      sum_of_factors = find_factors(num).reduce(:+)
      if sum_of_factors == num
        'perfect'
      elsif sum_of_factors.nil? || sum_of_factors < num
        'deficient'
      else
        'abundant'
      end
    end

    def self.find_factors(num)
      (1..num / 2).to_a.select { |i| i if (num % i).zero? }
    end

    private_class_method :find_factors
end
