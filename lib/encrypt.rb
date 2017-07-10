require 'pry'
require_relative "key_generator"
require_relative "offset_calculator"

class Encrypt
  attr_reader :character_a,
              :character_b,
              :character_c,
              :character_d,
              :key_gen,
              :offset
  def initialize
    @key_gen = KeyGenerator.new
    @offset = OffsetCalculator.new
  end

  def character_a
    @character_a = @a_rotation + @a_offset
  end

end
