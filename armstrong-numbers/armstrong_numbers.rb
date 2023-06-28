class ArmstrongNumbers
  def self.include?(number)
    number == number.digits.sum { |digit| digit.to_i**number.digits.length }
  end
end