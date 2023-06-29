class ResistorColorTrio
  COLORS = %w[black brown red orange yellow green blue violet grey white]
  VALUE_MAP = COLORS.zip((0..9).to_a).to_h

  def initialize(colors)
    @colors = colors
    @ohms ||= calculate_ohms
  end

  def label
    if @ohms < 1000
      "Resistor value: #{@ohms} ohms"
    else
      "Resistor value: #{@ohms / 1000} kiloohms"
    end
  end

  def calculate_ohms
    char_array = [VALUE_MAP[@colors[0]], VALUE_MAP[@colors[1]]]
    VALUE_MAP[@colors[2]].times { |i| char_array << 0 }
    char_array.join.to_i
  end
end