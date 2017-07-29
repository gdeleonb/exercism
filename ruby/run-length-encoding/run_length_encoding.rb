class RunLengthEncoding
  def self.encode(input)
    input.chars.chunk{ |char| char }.map do |char, reps|
      reps.length == 1 ? char : reps.length.to_s + char
    end.join
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
