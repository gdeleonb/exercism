class Binary
  def self.to_decimal(binary)
    raise ArgumentError if binary.match(/[^01]/)

    decimal = 0
    binary.chars.reverse.each_with_index do |digit, index|
      if digit == "1"
        decimal += 2**index
      end
    end
    decimal
  end
end

module BookKeeping
  VERSION = 3
end
