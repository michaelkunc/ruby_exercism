require 'prime'

class Raindrops

  CONVERSION = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}

  def self.convert(number)
    prime_factors = Prime.prime_division(number).flatten.uniq
    if (prime_factors & CONVERSION.keys).empty?
      number.to_s
    else
      response = []
      prime_factors.each {|element| response << CONVERSION[element]}
      response[0]
    end
  end

end