class Nucleotide
  attr_reader :histogram

  def initialize(string)
    @dna_chars = string.chars
    @histogram = count_dna
  end

  def self.from_dna(string)
    Nucleotide.new(string)
  end

  def count(char)
    @histogram[char]
  end

  def count_dna
    @dna_chars.each_with_object(Hash['A' => 0, 'T' => 0, 'C' => 0, 'G' => 0]) do |char, counts|
      raise ArgumentError if !counts[char]
      counts[char] += 1
    end
  end
end