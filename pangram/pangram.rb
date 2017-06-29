class Pangram
  def self.pangram?(phrase)
    phrase.empty? ? false : phrase.downcase.gsub(/[^a-z]/, '').split('').uniq.length == 26
  end
end

module BookKeeping
  VERSION = 4
end
