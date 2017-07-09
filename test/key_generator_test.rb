require './lib/key_generator'
require 'minitest/autorun'
require 'minitest/emoji'
require 'pry'

class KeyGeneratorTest < Minitest::Test

  def test_it_exists
    key = KeyGenerator.new

    assert_instance_of KeyGenerator, key
  end

  def test_it_creates_single_digit_as_a_string
    key = KeyGenerator.new

    assert_isntance_of String, key.single_digit_to_string
  end

  def test_it_creates_a_5_digit_long_string
    key = KeyGenerator.new

    assert_equal 5, key.generate_key.length
  end
end
