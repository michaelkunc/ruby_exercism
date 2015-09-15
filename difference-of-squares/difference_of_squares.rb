class Squares
  attr_accessor :number

  VERSION = 2

  def initialize(number)
    @number = (1..number)
  end

  def square_of_sums
    @number.reduce(:+) ** 2
  end

  def sum_of_squares
    @number.reduce {|sum, i| sum + i**2}
  end

  def difference
    square_of_sums - sum_of_squares
  end

end