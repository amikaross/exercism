class SumOfMultiples
  def initialize(*magical_items)
    @magical_items = magical_items
  end

  def to(level)
    (1..level - 1).select do |num|
      @magical_items.any? { |item_num| num % item_num == 0 }
    end.sum
  end
end