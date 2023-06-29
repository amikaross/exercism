module PhoneNumber
  NUMBERS = ("0".."9").to_a

  def self.clean(dirty_number)
    result = dirty_number.chars.select do |char|
      NUMBERS.include?(char)
    end.join

    result = result[1..-1] if result[0] == "1" && result.length == 11

    valid_number?(result) ? result : nil
  end

  def self.valid_number?(result)
    return false if result.length != 10
    return false if result[0] == "0" || result[0] == "1"
    return false if result[3] == "0" || result[3] =="1"
    true
  end
end