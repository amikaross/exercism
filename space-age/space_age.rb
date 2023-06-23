

# - Mercury: orbital period 0.2408467 Earth years
# - Venus: orbital period 0.61519726 Earth years
# - Earth: orbital period 1.0 Earth years, 365.25 Earth days, or 31557600 seconds
# - Mars: orbital period 1.8808158 Earth years
# - Jupiter: orbital period 11.862615 Earth years
# - Saturn: orbital period 29.447498 Earth years
# - Uranus: orbital period 84.016846 Earth years
# - Neptune: orbital period 164.79132 Earth years

class SpaceAge
  def initialize(seconds)
    @seconds = seconds.to_f
  end

  def on_earth
    result = (@seconds / 31557600).round(2)
  end
end