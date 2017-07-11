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
    assert_instance_of KeyGenerator, @kg
  end

  def test_it_generates_key
    assert_instance_of String, @kg.generate_key
  end

  def test_it_creates_a_5_digit_long_string
    assert_equal 5, @kg.generate_key.length
  end

  def test_it_finds_the_a_key_as_a_two_character_long_string
    assert_instance_of String, @kg.a_key
    assert_equal 2, @kg.a_key.length
  end

  def test_it_finds_the_b_key_as_a_two_character_long_string
    assert_instance_of String, @kg.b_key
    assert_equal 2, @kg.b_key.length
  end

  def test_it_finds_the_c_key_as_a_two_character_long_string
    assert_instance_of String, @kg.c_key
    assert_equal 2, @kg.c_key.length
  end

  def test_it_finds_the_d_key_as_a_two_character_long_string
    assert_instance_of String, @kg.d_key
    assert_equal 2, @kg.d_key.length
  end

end
