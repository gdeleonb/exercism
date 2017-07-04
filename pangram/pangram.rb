class Pangram
  def self.pangram?(phrase)
    !phrase.empty? && phrase.downcase.gsub(/[^a-z]/, '').chars.uniq.length == 26
  end
end

module BookKeeping
  VERSION = 4
end
