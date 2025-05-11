require 'test/unit'
require './sort_strategies.rb'

class TestSorting < Test::Unit::TestCase

  def setup
    @subject = SortStrategies.new
  end

  def test_merge_sort
    unsorted_arr = [100, 300, 10, 30, 100, 1, 7, 50, 1000, 12000, 1]
    sorted_arr = [1, 1, 7, 10, 30, 50, 100, 100, 300, 1000, 12000]
    assert_equal sorted_arr, @subject.merge_sort(unsorted_arr, 0, unsorted_arr.length - 1)
  end
end

