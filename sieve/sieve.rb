class Sieve
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def primes
    (2..@number).select { |n| prime?(n) }
  end

  private

  def prime?(number)
    return true if number == 2
    upper_limit = Math.sqrt(number).ceil
    (2..upper_limit).none? { |n| number % n == 0 }
  end
end
