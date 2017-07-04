class Grains
  TOTAL_SQUARES = 64
  def self.square(square)
    raise "Invalid input (1 <= square <= 64)" if square < 1 || square > 64
    2**(square - 1)
  end

  def self.total
    2**TOTAL_SQUARES - 1
  end
end
