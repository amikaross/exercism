module Transpose
  def self.transpose(input)
    rows = input.gsub(" ", "_").split("\n")
    largest_row = rows.map(&:size).max

    padded_rows = rows.map { |row| row.ljust(largest_row) }

    padded_rows.map(&:chars)
               .transpose
               .map { |new_row| new_row.join.rstrip.gsub("_", " ") }
               .join("\n")
  end
end