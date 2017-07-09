class Phrase
  VERSION = 1

  def initialize(phrase)
    @counts = {}
    phrase.downcase.gsub(/[^a-z0-9']/, ' ').split(' ').each do |word|
      if word[0] == "'" && word[0] == word[-1]
        word = word[1..-2]
      end
      if @counts[word] == nil
        @counts[word] = 1
      else
        @counts[word] += 1
      end
    end
  end

  def word_count
    @counts
  end
end
