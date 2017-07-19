require 'prime'

class PrimeFactors
  def self.for(integer)
    primes = Prime.each
    prime = primes.next
    factors = []
    while integer > 1
      if integer % prime == 0
        integer /= prime
        factors << prime
      else
        prime = primes.next
      end
    end
    factors
  end
end
