class Luhn
  def self.valid?(input)
    input = input.gsub(/\s+/, "")

    return false if input.length <= 1 

    num_total(input) && num_total(input) % 10 == 0
  end

  def self.num_total(input)
    (0..input.length - 1).each_with_object([]) do |i, coll|
      j = input.length - 1 - i
      return false if input[j].ord < 48 || input[j].ord > 57
      if i.even?
        coll << input[j].to_i
      else
        doubled_num = input[j].to_i * 2
        doubled_num -= 9 if doubled_num > 9 
        coll << doubled_num
      end
    end.sum
  end
end