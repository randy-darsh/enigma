require './lib/encrypt'

class EnigmaInput

  def read
    message = ARGV[0]
    File.read(message)
  end

end

class EnigmaOutput
  attr_reader :reader

  def initialize
    @reader = EnigmaInput.new
  end

  def write(text)
    new_message = File.open(encrypted.txt, "w")
    new_message.write(text)
    new_message.close
    print_message
  end

  # .scan(/.{4}/) to split words into 4 letter chunks

end
