class Hamming
  VERSION = 1
  def self.compute(strand_a, strand_b)
    validate_input(strand_a, strand_b)
    strand_a.chars.zip(strand_b.chars).count { |a, b| a != b }
  end

  def self.validate_input(strand_a, strand_b)
    if strand_a.length != strand_b.length
      fail ArgumentError, 'DNA strands must be of equal length.'
    end
  end
end
