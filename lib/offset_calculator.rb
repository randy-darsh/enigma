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
    @date = @date * @date
  end

  def capture_last_4
    @date = @date.to_s[-4..-1]
  end

  def assign_last_4_to_offset
    @date = @date.split(//)
  end

  def a_offset
    a_offset = @date[0]
  end

  def b_offset
    b_offset = @date[1]
  end

  def c_offset
    c_offset = @date[2]
  end

  def d_offset
    d_offset = @date[3]
  end
end
