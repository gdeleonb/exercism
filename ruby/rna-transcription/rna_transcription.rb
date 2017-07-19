class Complement
  VERSION = 1

  KEY = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }

  def self.of_dna(strand)
    strand.chars.map { |nucleotide| to_rna(nucleotide) }.join
  end

  def self.of_rna(strand)
    strand.chars.map { |nucleotide| to_dna(nucleotide) }.join
  end

  def self.to_rna(nucleotide)
    raise ArgumentError.new('Invalid DNA sequence') unless KEY.has_key?(nucleotide)
    KEY[nucleotide]
  end

  def self.to_dna(nucleotide)
    raise ArgumentError.new('Invalid RNA sequence') unless KEY.has_value?(nucleotide)
    KEY.invert[nucleotide]
  end

end
