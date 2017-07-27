class Binary
  def self.to_decimal(binary)
    raise ArgumentError if binary.match?(/[^01]/)

    binary.each_char.reduce(0) { |decimal, bit| decimal << 1 | bit.to_i }
  end
end

module BookKeeping
  VERSION = 3
end
