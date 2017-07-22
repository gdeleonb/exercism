class SumOfMultiples
  def initialize(*args)
    @divisors = args
  end

  def to(limit)
    range = (0..(limit - 1))
    multiples = [0]
    range.each do |num|
      @divisors.each do |divisor|
        if num % divisor == 0
          multiples.push(num)
          break
        end
      end
    end
    multiples.reduce(:+)
  end
end

module BookKeeping
  VERSION = 1
end
