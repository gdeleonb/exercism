class Series
  def initialize(series)
    @series = series.chars
  end

  def slices(length)
    raise ArgumentError if length > @series.length
    output = []
    index = 0
    until index + length > @series.length
      tmp = ""
      @series[index..(index+length-1)].each {|e| tmp << e}
      output.push(tmp)
      index += 1
    end
    return output
  end
end
