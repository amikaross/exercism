class Clock
  attr_reader :hour, :minute

  def initialize(args)
    @hour = args[:hour] || 0
    @minute = args[:minute] || 0
  end

  def to_s
    time_array = [0, 0, 0, 0]

    total_mins = (@hour * 60) + @minute
    hour = total_mins / 60
    minute = total_mins % 60 

    if hour % 24 <= 9 
      time_array[1] = hour % 24
    else
      time_array[0] = (hour % 24).to_s[0]
      time_array[1] = (hour % 24).to_s[1]
    end

    if minute % 60 <= 9
      time_array[3] = minute % 60
    else
      time_array[2] = (minute % 60).to_s[0]
      time_array[3] = (minute % 60).to_s[1]
    end

    "#{time_array[0]}#{time_array[1]}:#{time_array[2]}#{time_array[3]}"
  end

  def +(clock)
    Clock.new(hour: hour + clock.hour, minute: minute + clock.minute)
  end

  def -(clock)
    Clock.new(hour: hour - clock.hour, minute: minute - clock.minute)
  end

  def ==(clock)
    to_s == clock.to_s
  end
end

