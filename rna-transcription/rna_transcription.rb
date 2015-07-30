class Complement
  VERSION = 1

  def self.of_dna(strand)
    strand.chars.collect! do |nucleotide|
      case nucleotide
      when 'G'
        'C'
      when 'C'
        'G'
      when 'T'
        'A'
      when 'A'
        'U'
      else
        raise ArgumentError
      end
    end.join
  end

  def self.of_rna(strand)
    strand.chars.collect! do |nucleotide|
      case nucleotide
      when 'C'
        'G'
      when 'G'
        'C'
      when 'U'
        'A'
      when 'A'
        'T'
      else
        raise ArgumentError
      end
    end.join
  end

end
