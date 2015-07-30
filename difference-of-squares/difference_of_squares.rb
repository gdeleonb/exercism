class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sums
    (1..@number).inject(0) {|sum_of_numbers, number| sum_of_numbers + number} ** 2
  end

  def sum_of_squares
    (1..@number).inject(0) {|sum_of_squares, number| sum_of_squares + (number ** 2)}
  end

  def difference
    square_of_sums - sum_of_squares
  end

end
