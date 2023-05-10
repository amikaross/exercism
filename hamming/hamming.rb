class Hamming
  def self.compute(strand_1, strand_2)
    raise ArgumentError.new if strand_1.length != strand_2.length

    (0..strand_1.length - 1).inject(0) do |diff, i|
      strand_1[i] != strand_2[i] ? diff + 1 : diff + 0
    end
  end
end