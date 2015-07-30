class Complement
  VERSION = 1

  def self.of_dna(strand)
    strand.chars.collect! do |nucleotide|
      if nucleotide == 'G'
        'C'
      elsif nucleotide == 'C'
        'G'
      elsif nucleotide == 'T'
        'A'
      elsif nucleotide =='A'
        'U'
      elsif nucleotide != ('C' || 'G' || 'T' || 'A')
        raise ArgumentError
      end
    end.join
  end

  def self.of_rna(strand)
    strand.chars.collect! do |nucleotide|
      if nucleotide == 'C'
        'G'
      elsif nucleotide == 'G'
        'C'
      elsif nucleotide == 'U'
        'A'
      elsif nucleotide == 'A'
        'T'
      elsif nucleotide != ('C' || 'G' || 'U' || 'A')
        raise ArgumentError
      end
    end.join
  end

end
