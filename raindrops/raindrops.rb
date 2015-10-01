class Raindrops
  CONVERSION = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }
  def self.convert(number)
    words = create_response(number)
    words.length > 1 ? words : number.to_s
  end

  def self.create_response(number)
    CONVERSION.map { |k, v| v if number % k == 0 }.join
  end
end
