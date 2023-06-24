# for it to be a triangle at all:
# a + b ≥ c
# b + c ≥ a
# a + c ≥ b

# An _equilateral_ triangle has all three sides the same length.

# An _isosceles_ triangle has at least two sides the same length.
# (It is sometimes specified as having exactly two sides the same length, but for the purposes of this exercise we'll say at least two.)

# A _scalene_ triangle has all sides of different lengths.

class Triangle
  def initialize(sides)
    @a = sides[0]
    @b = sides[1]
    @c = sides[2]
  end

  def equilateral?
    @a == @b && @b == @c && @a != 0
  end

  def isosceles?
    (@a == @b || @b == @c || @a == @c) && triangle?
  end

  def scalene?
    @a != @b && @b != @c && @a != @c && triangle?
  end

  def triangle?
    (@a + @b >= @c) && (@b + @c >= @a) && (@a + @c >= @b)
  end
end