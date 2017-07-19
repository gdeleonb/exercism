class RunLengthEncoding
  def self.encode(input)
    encoding = input.chars.chunk { |char| char }.
      map { |char, chars| [chars.length, char] }.flatten
    encoding.delete(1)
    encoding.join
  end

  def self.decode(input)
    input.scan(/(\d*)(.)/).map do |repeats, char|
      repeats == "" ? char : char * repeats.to_i
    end.join
  end
end

module BookKeeping
  VERSION = 3
end
