module ETL
  def self.transform(old)
    old.each_with_object({}) do |(value, letter_array), new_hash|
      letter_array.each { |letter| new_hash[letter.downcase] = value }
    end
  end
end