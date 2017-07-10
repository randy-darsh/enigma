require './lib/encrypt'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class EncryptTest < Minitest::Test

  def test_it_exists
    encrypt = Encrypt.new
    assert_instance_of Encrypt, encrypt
  end


end
