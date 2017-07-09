require './lib/offset_calculator'
require 'minitest/autorun'
require 'minitest/emoji'
require 'pry'

class OffsetCalculatorTest < Minitest::Test

  def test_it_exists
    oc = OffsetCalculator.new

    assert_instance_of OffsetCalculator, oc
  end

  def test_it_has_a_time
    oc = OffsetCalculator.new

    assert_equal Time.now.strftime('%m%d%y').to_i, oc.date
  end

end
