require './lib/key_generator'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class KeyGeneratorTest < Minitest::Test

  def setup
    @kg = KeyGenerator.new
    @kg.generate_key
  end

  def test_it_exists
    @kg

    assert_instance_of KeyGenerator, @kg
  end

  def test_it_generates_key
    @kg

    assert_instance_of String, @kg.generate_key
  end

  def test_default_key_is_static
    @kg

    assert_equal "12345", @kg.default_key
  end

  def test_it_creates_a_5_digit_long_string
    @kg

    assert_equal 5, @kg.generate_key.length
  end
end
