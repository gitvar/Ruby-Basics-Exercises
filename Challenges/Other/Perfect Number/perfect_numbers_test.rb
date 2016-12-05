require 'minitest/autorun'
require "minitest/reporters"
require_relative 'perfect_numbers_1'
# require_relative 'perfect_numbers_2'

Minitest::Reporters.use!

class PerfectNumberTest < Minitest::Test
  def test_initialize_perfect_number_minus_1
    assert_raises RuntimeError do
      PerfectNumber.classify(-1)
    end
  end

  def test_initialize_perfect_number_1_point_5
    assert_raises RuntimeError do
      PerfectNumber.classify(1.5)
    end
  end

  def test_private_method
    assert_raises NoMethodError do
      PerfectNumber.find_factors(6)
    end
  end

  def test_initialize_perfect_number_1
      assert_equal 'deficient', PerfectNumber.classify(1)
  end

  def test_classify_deficient_13
    assert_equal 'deficient', PerfectNumber.classify(13)
  end

  def test_classify_deficient_109
    assert_equal 'deficient', PerfectNumber.classify(109)
  end

  def test_classify_perfect_6
    assert_equal 'perfect', PerfectNumber.classify(6)
  end

  def test_classify_perfect_28
    assert_equal 'perfect', PerfectNumber.classify(28)
  end

  def test_classify_abundant_12
    assert_equal 'abundant', PerfectNumber.classify(12)
  end

  def test_classify_abundant_100
    assert_equal 'abundant', PerfectNumber.classify(100)
  end
end
