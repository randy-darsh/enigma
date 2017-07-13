require './lib/encrypt'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class EncryptTest < Minitest::Test

  def setup
    @encrypt = Encrypt.new
  end

  def test_it_exists
    assert_instance_of Encrypt, @encrypt
  end

  def test_it_splits_a_message_into_an_array_of_indexes
    assert_equal [22, 7, 0, 19, 4, 21, 4, 17], @encrypt.find_message_index_numbers("whatever")
  end

  def test_it_has_an_a_rotation
    assert_instance_of Integer, @encrypt.a_rotation
  end

  def test_it_creates_a_new_rotated_map
    assert_instance_of Array, @encrypt.rotate_character
  end

  def test_it_can_return_the_encrypted_character
    assert_instance_of String, @encrypt.return_encrypted_character
  end

end
