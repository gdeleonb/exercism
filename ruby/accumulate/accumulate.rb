class Array
  def accumulate(&block)
    return self.to_enum unless block

    self.map { |elem| block.call(elem)}
  end
end

module BookKeeping
  VERSION = 1
end
