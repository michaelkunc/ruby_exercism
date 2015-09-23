class Grains
  VERSION = 3
  def self.square(number)
    2 ** (number - 1)
  end

  def self.total
    square(65) - 1
  end

end
