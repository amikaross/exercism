class Squares
  def initialize(length)
    @collection = (1..length).to_a
  end

  def sum_of_squares
    @collection.inject(0) do |sum, val| 
      sum + (val*val)
    end
  end

  def square_of_sum
    sum = @collection.sum
    sum * sum 
  end

  def difference
    square_of_sum - sum_of_squares
  end
end