module PythagoreanTriplet
  def self.triplets_with_sum(num)
    triplets = []
    (1..num / 3).each do |a|
      b = (num - 2 * a) * num / (2 * (num - a))
      c = num - a - b
      next if b < a || c < b

      triplets << [a, b, c] if a * a + b * b == c * c 
    end
    triplets
  end
end

# a² + b² = c²
# a < b < c
# a + b + c = N

# a**2 + b**2 = (sum - a - b)**2
# b**2 = (sum - a - b)**2 - a**2