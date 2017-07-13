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
              :original_indexes

  def initialize
    @enigma_input = enigma_input
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

  def find_message_index_numbers(enigma_input)
    @original_indexes = enigma_input.split(//).map do |character|
      @character_map.index(character)
    end
  end

  def encrypt_a
    @rotated_map_a = @character_map.rotate(a_rotation)
    @rotated_map_a[@original_indexes[0]]
  end

  def encrypt_b
    @rotated_map_b = @character_map.rotate(b_rotation)
    @rotated_map_b[@original_indexes[1]]
  end

  def encrypt_c
    @rotated_map_c = @character_map.rotate(c_rotation)
    @rotated_map_c[@original_indexes[2]]
  end

  def encrypt_d
    @rotated_map_d = @character_map.rotate(d_rotation)
    @rotated_map_d[@original_indexes[3]]
  end

  def sort_message_into_encryption(index)
    if index % 4 == 0
      @rotated_map_a.encrypt_a
    elsif index % 4 == 1
      @rotated_map_b.encrypt_b
    elsif index % 4 == 2
      @rotated_map_c.encrypt_c
    elsif index % 4 == 3
      @rotated_map_d.encrypt_d
    end
  end

end
