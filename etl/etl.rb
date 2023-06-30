module ETL
  def self.transform(old)
    old.each_with_object({}) do |old, new_hash|
      value, letter_array = old
      letter_array.each { |letter| new_hash[letter.downcase] = value }
    end
  end
end