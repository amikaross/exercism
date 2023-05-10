class Hamming
  def self.compute(strand_1, strand_2)
    if strand_1.length != strand_2.length
      raise ArgumentError.new
    end
    differences = 0
    (0..strand_1.length - 1).each do |i|
      differences += 1 if strand_1[i] != strand_2[i]
    end
    differences
  end
end