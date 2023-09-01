module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    string = ship_identifier.to_s[0..2]
    (string == "OIL" || string == "GAS") ? :A : :B
  end
end
