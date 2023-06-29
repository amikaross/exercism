class Grid
  def self.saddle_points(input)
    result = (0..input.length - 1).each_with_object([]) do |i, saddle_points|
      (0..input[i].length - 1).each do |j|
        saddle_points << {"row" => (i + 1), "column" => (j + 1)} if is_saddle_point?(input, i, j)
      end
    end
  end

  def self.is_saddle_point?(input, i, j)
    right_tree = input[i][j + 1] || -1.0/0.0
    left_tree = input[i][j - 1] || -1.0/0.0
    top_tree = input[i - 1] ? input[i - 1][j] : 1.0/0.0
    bottom_tree = input[i + 1] ? input[i + 1][j] : 1.0/0.0

    input[i][j] >= right_tree && input[i][j] >= left_tree && input[i][j] <= top_tree && input[i][j] <= bottom_tree
  end
end