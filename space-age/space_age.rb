class SpaceAge
  def initialize(seconds)
    @seconds = seconds
    @orbits = {
      "earth" => 1.0,
      "mercury" => 0.2408467,
      "venus" => 0.61519726,
      "mars" => 1.8808158,
      "jupiter" => 11.862615,
      "saturn" => 29.447498,
      "uranus" => 84.016846,
      "neptune" => 164.79132
    }
  end

  def method_missing(m)
    planet = m.to_s[3..-1]
    (@seconds / (31557600*@orbits[planet])).round(2)
  end
end
