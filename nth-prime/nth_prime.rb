class Prime

  def nth(nth_prime)
    raise ArgumentError unless nth_prime > 0
    @primes = [2]
    test_number = 3

    while @primes.length != nth_prime
      prime_check(test_number)
      test_number += 2
    end
    @primes.last
  end

  def prime_check(test_number)
    @primes.each do |prime|
      return if test_number % prime == 0
    end
    @primes << test_number
  end

end
