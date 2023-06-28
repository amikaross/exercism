class FlattenArray
  def self.flatten(input)
    input.flatten.reject { |e| e == nil }
  end
end