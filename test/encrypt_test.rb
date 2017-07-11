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

  def test_it_can_find_a_character
    assert_equal "g", @encrypt.find_character("g")
  end

  def test_it_can_find_a_character_by_index
    assert_equal 6, @encrypt.return_character_index_value("g")
  end

  def test_it_finds_new_index_of_character
    assert_instance_of Integer, @encrypt.find_rotation_number("g")
  end



  # def test_it_can_find_multiple_characters
  #   skip
  #   assert_equal "", @encrypt.find_character("")
  # end


end
