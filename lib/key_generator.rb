require 'pry'

class KeyGenerator
  attr_reader :key

  def initialize
    @key = generate_key
  end

  def generate_key
    diff_key = []
    numbers = [0,1,2,3,4,5,6,7,8,9]
    5.times do
      diff_key << numbers.sample
    end
    diff_key.join
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
