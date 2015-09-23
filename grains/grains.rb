class Grains
  VERSION = 1
  def self.square(square_number)
    get_grains(square_number).last
  end

  def self.get_grains(square_number)
    (square_number - 1).times.with_object([1]) { |i, a| a << a.last * 2 }
  end

  def self.total
    get_grains(64).reduce(:+)
  end
end
