module Grains
  def self.square(num)
    raise ArgumentError if num <= 0 || num > 64

    2**(num - 1)
  end

  def self.total
    (1..64).sum { |i| square(i) }
  end
end