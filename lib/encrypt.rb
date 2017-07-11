require 'pry'
require_relative 'key_generator'
require_relative 'offset_calculator'
require_relative 'enigma'

class Encrypt
  attr_reader :a_rotation,
              :b_rotation,
              :c_rotation,
              :d_rotation,
              :key_gen,
              :offset,
              :character_map,
              :enigma_input,
              :find_character

  def initialize
    @enigma_input = EnigmaInput.new
    @key_gen = KeyGenerator.new
    @offset = OffsetCalculator.new
    @character_map = character_map
  end

  def character_map
    ('a'..'z').to_a + ('0'..'9').to_a + [' ','.',',']
  end

  def a_rotation
    @key_gen.a_key.to_i + @offset.a_offset.to_i
  end

  def b_rotation
    @key_gen.b_key.to_i + @offset.b_offset.to_i
  end

  def c_rotation
    @key_gen.c_key.to_i + @offset.c_offset.to_i
  end

  def d_rotation
    @key_gen.d_key.to_i + @offset.d_offset.to_i
  end

  def find_character(value)
    @character_map.find do |character|
      character == value
    end
  end

  def return_character_index_value(value)
    @original_index = @character_map.index(value)
  end

  def rotate_first_character
    @rotated_map_a = @character_map.rotate(a_rotation)
  end

  def return_first_encrypted_character
    @rotated_map_a[@original_index]

  end

  # def find_b_rotation_number(value)
  #   @character_map.index(value) + b_rotation
  # end
  #
  # def find_c_rotation_number(value)
  #   @character_map.index(value) + c_rotation
  # end
  #
  # def find_d_rotation_number(value)
  #   @character_map.index(value) + d_rotation
  # end

  def find_new_index_position(value)
    @character_map.rotate(find_rotation_number)
    @character_map.index(find_rotation_number)
  end

  # first it needs to find the index of the first character input
  # then it needs to rotate forward through the character map
  # rotate will take the argument of the final rotation values
  # returns the character at that same index, after it's been rotated

end
