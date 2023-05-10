class Isogram
  def self.isogram?(input)
    input = input.downcase
    (0..input.length - 1).each_with_object({}) do |i, character_hash|
      unless input[i] == "-" || input[i] == " "
        return false if character_hash[input[i]]
        character_hash[input[i]] = true
      end
    end
  end
end