class Series
  def initialize(series)
    @series = series
  end

  def slices(length)
    raise ArgumentError if length > @series.length
    copy = @series.dup
    output = []
    until copy.length < length
      output << copy.slice(0, length)
      copy[0] = ''
    end
    output
  end
end
