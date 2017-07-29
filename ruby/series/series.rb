class Series
  def initialize(series)
    @series = series
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > @series.length

    (0..@series.length-slice_length).map do |n|
      @series.slice(n, slice_length)
    end
  end
end
