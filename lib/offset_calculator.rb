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

  def square_date_integer(value)
    @date ** 2
  end

  def capture_last_four(value)
    value.to_s[-4..-1]
  end

  def split_into_array(value)
    value.split(//)
  end

  def set_offset_key
    value = square_date_integer
    capture_last_four(value).split(//)
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
