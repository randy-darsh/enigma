require 'pry'

class OffsetCalculator

  attr_reader :date,
              :a_offset,
              :b_offset,
              :c_offset,
              :d_offset

  def initialize
    @date = Time.now.strftime('%m%d%y').to_i
    @offset_key = set_offset_key
  end

  def set_offset_key
    (@date ** 2).to_s[-4..-1]
  end

  def a_offset
    @offset_key[0]
  end

  def b_offset
    @offset_key[1]
  end

  def c_offset
    @offset_key[2]
  end

  def d_offset
    @offset_key[3]
  end

end
