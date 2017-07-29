class Phrase
  VERSION = 1

  def initialize string
    @count = Hash.new(0)
    string.downcase.scan(/\b[\w']+\b/).each { |word| @count[word] += 1 }
  end

  def word_count
    @count
  end
end
