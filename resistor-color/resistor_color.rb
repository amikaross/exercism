module ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white]

  def self.color_code(code)
    COLORS.each_with_index do |color, i|
      return i if color == code 
    end
  end
end