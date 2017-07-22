class Phrase
  VERSION = 1

  def initialize(phrase)
    @counts = Hash.new { |hash, key| hash[key] = 0 }
    phrase.downcase.gsub(/[^a-z0-9']/, ' ').split(' ').each do |word|
      if word[0] == "'" && word[-1] == "'"
        word = word[1..-2]
      end
      @counts[word] += 1
    end
  end

  def word_count
    @counts
  end
end
