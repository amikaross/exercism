class Raindrops
  def self.convert(int)
    result = ""
    if int % 3 == 0
      result << "Pling"
    elsif int % 5 == 0 
      result <<  "Plang"
    elsif int % 7 == 0 
      result << "Plong"
    else
      result << int.to_s
    end
    result
  end
end