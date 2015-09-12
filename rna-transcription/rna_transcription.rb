require 'set'

class Complement
    VERSION = 1
    DNA_TO_RNA = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}
    RNA_TO_DNA = DNA_TO_RNA.invert

  def self.of_dna(dna)
    validate_input(dna, DNA_TO_RNA)
    convert(dna, DNA_TO_RNA)
  end

  def self.of_rna(rna)
    validate_input(rna, RNA_TO_DNA)
    convert(rna, RNA_TO_DNA)
  end

  private

  def self.convert(string, translation_hash)
    return string.split('').map {|element| translation_hash[element]}.join('')
  end

  def self.validate_input(string, translation_hash)
    raise ArgumentError unless translation_hash.keys.include?(string) || Set.new(translation_hash.keys) == Set.new(string.split(''))
  end


end