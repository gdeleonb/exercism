class Array
  def accumulate(&block)
    return self.to_enum if !block

    output = []
    self.each do |elem|
      output.push(block.call(elem))
    end
    return out
  end
end

module BookKeeping
  VERSION = 1
end
