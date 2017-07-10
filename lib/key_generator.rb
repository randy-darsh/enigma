require 'pry'

class KeyGenerator
  attr_reader :key,
              :default_key

  def initialize
    @key = generate_key
    @default_key = "12345"
  end

  def generate_key
    random_key = []
    numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    5.times do
      random_key << numbers.sample
    end
    random_key.join
  end

  def a_rotation
    @key[0..1].join
  end

  def b_rotation
    @key[1..2].join
  end

  def c_rotation
    @key[2..3].join
  end

  def d_rotation
    @key[3..4].join
  end

end
