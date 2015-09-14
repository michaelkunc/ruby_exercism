class Squares
  attr_accessor :number

  VERSION = 1

  def initialize(number)
    @number = (1..number)
  end

  def square_of_sums
    @number.reduce(:+) ** 2
  end

  def sum_of_squares
    @number.inject {|sum, i| sum + i**2}
  end

  def difference
    square_of_sums - sum_of_squares
  end

end