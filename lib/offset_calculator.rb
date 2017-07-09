require 'pry'

class OffsetCalculator

  attr_reader :date

  def initialize
    @date = Time.now.strftime('%m%d%y').to_i
  end

  def square_date_integer
    @date = @date * @date
  end

  def capture_last_4
    @date.to_s[-4..-1]
  end

  def assign_last_4_to_offset

  end

end
