class ArmstrongNumbers
  def self.include?(number)
    digits = number.to_s.chars
    num_digits = digits.length
    number == digits.sum { |digit| digit.to_i**num_digits }
  end
end