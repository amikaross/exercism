class Game
  def initialize
    @frames = []
    @fill_balls = []
  end

  def roll(pins)
    raise BowlingError if pins < 0 || pins > 10 
    last_frame = @frames.last
    if complete_or_nil?(last_frame)
      raise BowlingError if (@frames.length > 9) && (last_frame[:status] == "open")
      if @frames.length > 10
        last_frame[:bottom] = 0 if last_frame[:bottom].nil?
        @fill_balls << pins 
        return
      end
      @frames << { top: pins, bottom: nil, status: nil }
    else
      if last_frame[:top] == 10
        last_frame[:bottom] = 0 
        last_frame[:status] = "strike"
        @frames << { top: pins, bottom: nil, status: nil }
      elsif last_frame[:top] + pins == 10 
        last_frame[:bottom] = pins 
        last_frame[:status] = "spare"
      else
        raise BowlingError if (last_frame[:top] + pins) > 10 
        last_frame[:bottom] = pins 
        last_frame[:status] = "open"
      end
    end
  end

  def complete_or_nil?(frame)
    frame.nil? || (frame[:top] && frame[:bottom] && frame[:status])
  end

  def score
    raise BowlingError if @frames.empty? || @frames.length < 10
    adjust_frame_ten
    require 'pry'; binding.pry 
    total = 0
    @frames.each_with_index do |frame, i|
      unless i > 9
        total += (frame[:top] + frame[:bottom])
        if frame[:status] != "open"
          first_following = @frames[i + 1][:top]
          total += first_following
          if frame[:status] == "strike"
            first_following == 10 ? second_following = @frames[i + 2][:top] : second_following = @frames[i + 1][:bottom]
            total += second_following
          end
        end
      end
    end
    total
  end

  def adjust_frame_ten
    @frames.last[:bottom] = 0 

  end
end

class Game::BowlingError < StandardError
end