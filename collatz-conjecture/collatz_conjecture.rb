class CollatzConjecture
  def self.steps(n)
    raise ArgumentError if n <= 0
    steps = 0
    until n == 1 do
      n.even? ? n = n / 2 : n = (3 * n) + 1
      steps += 1
    end
    steps
  end
end