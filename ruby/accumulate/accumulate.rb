class Array
  def accumulate(&block)
    return self.to_enum unless block

    output = []
    self.each do |elem|
      output.push(block.call(elem))
    end
    output
  end
end

module BookKeeping
  VERSION = 1
end
