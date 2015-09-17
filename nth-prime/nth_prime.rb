
class Prime
  VERSION = 2

  def self.nth(nth_index)
    raise ArgumentError, 'Number must be greater than zero' if nth_index == 0
    (1..nth_index*100).select {|num| prime?(num)}[nth_index]
  end

  def prime?(number)
    (2..number/2).none?{|i| number % i == 0}
  end

end
