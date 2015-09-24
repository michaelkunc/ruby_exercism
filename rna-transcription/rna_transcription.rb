class Complement
  VERSION = 2
  DNA_TO_RNA = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
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
    string.chars.each_with_object('') { |i, str| str << translation_hash[i] }
  end

  def self.validate_input(string, translation_hash)
    error_message = 'Please enter a valid DNA or RNA string'
    string.each_char do |char|
      raise ArgumentError, error_message unless translation_hash.keys.include?(char)
    end
  end
end
