require 'pry'

class KeyGenerator
  attr_reader :key

  def initialize
    @key = generate_key
  end

  def generate_key
    random_key = []
    numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    5.times do
      random_key << numbers.sample
    end
    random_key.join
  end

  def a_key
    @key[0..1]
  end

  def b_key
    @key[1..2]
  end

  def c_key
    @key[2..3]
  end

  def d_key
    @key[3..4]
  end

end
