class Allergies
  def initialize(score)
    @score = score
    @allergies = {}
    @allergy_map = {
      "eggs" => 1,
      "peanuts" => 2,
      "shellfish" => 4,
      "strawberries" => 8,
      "tomatoes" => 16,
      "chocolate" => 32,
      "pollen" => 64,
      "cats" => 128
  }.sort_by { |_, value| -value }.to_h
  end

  def allergic_to?(string)
    check_allergies if @allergies.empty?
    @allergies[string] ? true : false
  end

  def check_allergies
    temp = @score 
    if temp >= @allergy_map.first[1] * 2
      temp = @score - @allergy_map.first[1] * 2
    end
    @allergy_map.each do |key, value|
      if temp >= value
        temp = temp % value
        @allergies[key] = true
      end
    end
  end

  def list
    check_allergies if @allergies.empty?
    @allergies.keys.reverse
  end
end