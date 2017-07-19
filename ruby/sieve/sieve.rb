class Sieve
  def initialize(limit)
    @primes = []
    if limit >= 2
      range = (2..limit).to_a
      until range.empty?
        @primes << range.shift
        range.delete_if { |num| num % @primes.last == 0 }
      end
    end
    @primes
  end

  def primes
    @primes
  end
end

module BookKeeping
  VERSION = 1
end
