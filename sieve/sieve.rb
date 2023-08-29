# A prime number is a number that is only divisible by 1 and itself.
# For example, 2, 3, 5, 7, 11, and 13 are prime numbers.

# To use the Sieve of Eratosthenes, you first create a list of all the numbers between 2 and your given number.
# Then you repeat the following steps:

# 1. Find the next unmarked number in your list. This is a prime number.
# 2. Mark all the multiples of that prime number as composite (not prime).

class Sieve
  def initialize(num)
    @num = num
  end

  def primes
    primes = (2..@num).to_a
    i = 0
    while i < primes.length do
      current_num = primes[i]
      primes.each do |num|
        next if num == current_num
        primes.delete(num) if num % current_num == 0
      end
      i += 1
    end
    primes
  end
end