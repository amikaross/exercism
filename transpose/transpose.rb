module Transpose
  def self.transpose(input)
    rows = input.gsub(" ", "_").split("\n")
    largest_row = rows.map(&:size).max

    padded_rows = rows.map { |row| row.ljust(largest_row) }

    padded_rows.map(&:chars)
               .custom_transpose
               .map { |new_row| new_row.join.rstrip.gsub("_", " ") }
               .join("\n")
  end
end

# could have used array method transpose on line 9, 
# but I wanted to try to implement it myself as well

class Array
  def custom_transpose
    self.each_with_object([]) do |row, output|
      row.each_with_index do |char, j|         
        output[j] ? output[j] << char : output << [char]
      end
    end
  end
end