class Hamming
  VERSION = 1

  def self.compute(strand_1, strand_2)
    raise ArgumentError unless strand_1.length == strand_2.length
    strand_1.chars.zip(strand_2.chars).
            count { |nuc_1, nuc_2| nuc_1 != nuc_2 }
  end
end
