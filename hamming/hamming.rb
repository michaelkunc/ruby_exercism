class Hamming
  VERSION = 3

  def self.compute(strand_a, strand_b)
    validate_input(strand_a, strand_b)
    strand_a.split('').zip(strand_b.split('')).map {|a, b| a==b}.count(false)
  end

  def self.validate_input(strand_a, strand_b)
    raise ArgumentError, 'Please enter two equal length strands' if strand_a.length != strand_b.length
  end

end
