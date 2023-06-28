class FlattenArray
  def self.flatten(input)
    input.each_with_object([]) do |element, result|
      next if element.nil?
      if element.class == Array
        result.concat(flatten(element))
      else
        result.append(element)
      end
    end
  end
end