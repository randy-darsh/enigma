class KeyGenerator

  def single_digit_to_string
    rand(10).to_s
  end

  def generate_key
    key = ''
    5.times do
      key += single_digit_to_string
    end
    key
  end

end
