class Grains
  def self.square(square)
    1 * 2**(square - 1)
  end

  def self.total
    (1..64).inject { |sum, number| sum + 1 * 2**(number - 1) }
  end
end
