require './lib/offset_calculator'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class OffsetCalculatorTest < Minitest::Test

  def setup
    @oc = OffsetCalculator.new
  end

  def test_it_exists
    assert_instance_of OffsetCalculator, @oc
  end

  def test_it_has_a_time
    assert_equal Time.now.strftime('%m%d%y').to_i, @oc.date
  end

  def test_it_sets_offset_key
    assert_equal "7689", @oc.set_offset_key
  end

  def test_it_assigns_a_offset
    assert_equal ((Time.now.strftime('%m%d%y').to_i) ** 2).to_s[-4..-1][0], @oc.a_offset
  end

  def test_it_assigns_b_offset
    assert_equal ((Time.now.strftime('%m%d%y').to_i) ** 2).to_s[-4..-1][1], @oc.b_offset
  end

  def test_it_assigns_c_offset
    assert_equal ((Time.now.strftime('%m%d%y').to_i) ** 2).to_s[-4..-1][2], @oc.c_offset
  end

  def test_it_assigns_d_offset
    assert_equal ((Time.now.strftime('%m%d%y').to_i) ** 2).to_s[-4..-1][3], @oc.d_offset
  end

end
