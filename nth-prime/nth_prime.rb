class Prime

  def self.nth(nth_prime)
    VERSION = 1
    raise ArgumentError if nth_prime == 0
    primes = []
    (1..nth_prime*100).each {|e| primes << e if prime?(e)}
    primes[nth_prime]
  end

  def prime?(number)
    (2..number/2).none?{|i| number % i == 0}
  end

end

