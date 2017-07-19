class Pangram
  ALPHABET = %w{a b c d e f g h i j k l m n o p q r s t u v w x y z}

  def self.pangram?(phrase)
    (ALPHABET - phrase.downcase.chars).empty?
  end
end

module BookKeeping
  VERSION = 4
end
