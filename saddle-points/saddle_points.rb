class Grid
  def self.saddle_points(input)
    rows = input
    columns = rows.transpose

    result = (0..input.length - 1).each_with_object([]) do |i, saddle_points|
      (0..input[i].length - 1).each do |j|
        value = input[i][j]
        saddle_points << {"row" => (i + 1), "column" => (j + 1)} if value == rows[i].max && value == columns[j].min
      end
    end
  end
end