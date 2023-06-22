module Year 
  def self.leap?(year)
    if year % 4 == 0
      if year % 100 == 0
        if year % 400 == 0
          true
        else
          false
        end
      else
        true
      end
    else
      false
    end
  end
end

# on every year that is evenly divisible by 4
#   except every year that is evenly divisible by 100
#     unless the year is also evenly divisible by 400