class Squares
  def initialize(natural_number)
    @number = natural_number
  end

  def square_of_sums
    (@number * (@number + 1) / 2)**2
  end

  def sum_of_squares
    @number * (@number + 1) * (2 * @number + 1) / 6
  end

  def difference
    square_of_sums - sum_of_squares
  end

end
