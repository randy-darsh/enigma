require 'pry'

class OffsetCalculator

  attr_reader :date,
              :a_offset,
              :b_offset,
              :c_offset,
              :d_offset

  def initialize
    @date = Time.now.strftime('%m%d%y').to_i
  end

  def square_date_integer
    @date * @date
  end

  def capture_last_4(value)
    value.to_s[-4..-1]
  end

  def split_into_array(value)
    value.split(//)
  end

  def set_offset_key
    value = square_date_integer
    capture_last_4(value).split(//)
  end

  def a_offset
    set_offset_key[0]
  end

  def b_offset
    set_offset_key[1]
  end

  def c_offset
    set_offset_key[2]
  end

  def d_offset
    set_offset_key[3]
  end


end
