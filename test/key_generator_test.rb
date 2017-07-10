require './lib/key_generator'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class KeyGeneratorTest < Minitest::Test

  def test_it_exists
    key = KeyGenerator.new

    assert_instance_of KeyGenerator, key
  end

  def test_it_generates_key
    key = KeyGenerator.new
    assert_instance_of String, key.generate_key
  end

  # def test_it_blah
  #   key = KeyGenerator.new
  #   assert_equal "12345", key.key
  # end
  #
  #
  # def test_it_creates_single_digit_as_a_string
  #   key = KeyGenerator.new
  #
  #   assert_instance_of String, key.single_digit_to_string
  # end
  #
  # def test_it_creates_a_5_digit_long_string
  #   key = KeyGenerator.new
  #
  #   assert_equal 5, key.generate_key.length
  # end
end
