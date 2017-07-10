require './lib/offset_calculator'
require 'minitest/autorun'
require 'minitest/pride'
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

  def test_it_squares_the_date
    oc = OffsetCalculator.new

    assert_equal (Time.now.strftime('%m%d%y').to_i) ** 2, oc.square_date_integer
  end

  def test_it_captures_last_four
    oc = OffsetCalculator.new
    oc.capture_last_four(12345)

    assert_equal ((Time.now.strftime('%m%d%y').to_i) ** 2).to_s[-4..-1], oc.capture_last_four
  end

  # def test_it_assigns_offset_to_array
  #   oc = OffsetCalculator.new
  #   oc.square_date_integer
  #   oc.capture_last_four

  #   assert_equal (((Time.now.strftime('%m%d%y').to_i) ** 2).to_s[-4..-1]).split(//), oc.assign_last_4_to_offset
  # end
  #
  # def test_it_assigns_a_offset
  #   oc = OffsetCalculator.new
  #   oc.square_date_integer
  #   oc.capture_last_four
  #   oc.split_into_array

  #   assert_equal ((((Time.now.strftime('%m%d%y').to_i) ** 2).to_s[-4..-1]).split(//))[0], oc.a_offset
  # end
  #
  # def test_it_assigns_b_offset
  #   oc = OffsetCalculator.new
  #   oc.square_date_integer
  #   oc.capture_last_four
  #   oc.split_into_array

  #   assert_equal ((((Time.now.strftime('%m%d%y').to_i) ** 2).to_s[-4..-1]).split(//))[1], oc.b_offset
  # end
  #
  # def test_it_assigns_c_offset
  #   oc = OffsetCalculator.new
  #   oc.square_date_integer
  #   oc.capture_last_four
  #   oc.split_into_array

  #   assert_equal ((((Time.now.strftime('%m%d%y').to_i) ** 2).to_s[-4..-1]).split(//))[2], oc.c_offset
  # end
  #
  # def test_it_assigns_d_offset
  #   oc = OffsetCalculator.new
  #   oc.square_date_integer
  #   oc.capture_last_four
  #   oc.split_into_array

  #   assert_equal ((((Time.now.strftime('%m%d%y').to_i) ** 2).to_s[-4..-1]).split(//))[3], oc.d_offset
  # end
end
