class Prime
  def nth(n)
    raise ArgumentError unless n > 0
    @primes = [2]
    test_number = 3

    while @primes.length < n
      prime_check(test_number)
      test_number += 2
    end
    @primes.last
  end

  def prime_check(test_number)
    ceiling = Math.sqrt(test_number)
    @primes.each do |prime|
      break if prime > ceiling
      return if test_number % prime == 0
    end
    @primes << test_number
  end
end

module BookKeeping
  VERSION = 1
end
