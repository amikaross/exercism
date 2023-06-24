class Triangle
  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    @sides.uniq.count == 1 && triangle?
  end

  def isosceles?
    @sides.uniq.count <= 2 && triangle?
  end

  def scalene?
    @sides.uniq.count == 3 && triangle?
  end

  private

    def triangle?
      sum = @sides.sum
      @sides.all? { |side| (side <= (sum - side)) && side > 0 }
    end
end