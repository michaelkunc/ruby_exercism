class Complement
    DNA_TO_RNA = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}

  def self.of_dna(dna)
      raise ArgumentError if dna.include?('U')
      convert(dna, DNA_TO_RNA)
  end

  def self.of_rna(rna)
      convert(rna, DNA_TO_RNA.invert)
  end

  private

  def self.convert(string, translation_hash)
    return string.split('').map {|element| translation_hash[element]}.join('')
  end

end