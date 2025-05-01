require 'test/unit'
require './mean'
require './variance'

class TestMath < Test::Unit::TestCase
  include Mean
  include Variance  

  def test_mean1D
    assert_equal 5.67, mean1D([2, 5, 6, 8, 3, 10]).round(2) 
  end

  def test_var1D
    assert_equal 4.67, var1D([5, 6, 10]).round(2)
  end
end

