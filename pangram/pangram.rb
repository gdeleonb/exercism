class Pangram
  ALPHABET = %w{a b c d e f g h i j k l m n o p q r s t u v w x y z}

  def self.pangram?(phrase)
    phrase.downcase.
           gsub(/[^[#{ALPHABET.join(',')}]]/, '').
           chars.uniq.length == ALPHABET.length
  end
end

module BookKeeping
  VERSION = 4
end
