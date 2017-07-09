class OffsetCalculator

  attr_reader :date

  def initialize
    @date = Time.now.strftime('%m%d%y').to_i
  end

end
