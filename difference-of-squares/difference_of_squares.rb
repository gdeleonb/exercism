class Squares
  def initialize(natural_number)
    @number = natural_number
  end

  def square_of_sums
    (1..@number).inject(:+) ** 2
  end

  def sum_of_squares
    (1..@number).inject(0) { |sum_of_squares, current_number| sum_of_squares + (current_number ** 2) }
  end

  def difference
    square_of_sums - sum_of_squares
  end

end
