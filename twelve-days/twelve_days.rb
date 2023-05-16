class TwelveDays
  GIFTS = {
    "first" => "a Partridge in a Pear Tree",
    "second" => "two Turtle Doves",
    "third" => "three French Hens",
    "fourth" => "four Calling Birds",
    "fifth" => "five Gold Rings",
    "sixth" => "six Geese-a-Laying",
    "seventh" => "seven Swans-a-Swimming",
    "eighth" => "eight Maids-a-Milking",
    "ninth" => "nine Ladies Dancing",
    "tenth" => "ten Lords-a-Leaping",
    "eleventh" => "eleven Pipers Piping",
    "twelfth" => "twelve Drummers Drumming"
  }

  def self.song
    song = ""
    previous_gifts = []
    GIFTS.each_with_index do |arr, i|
      song << "On the #{arr[0]} day of Christmas my true love gave to me: #{arr[1]}"
      if i > 0
        previous_gifts.reverse.each { |gift| song << ", #{gift}" }
        previous_gifts << arr[1]
      else
        previous_gifts << "and #{arr[1]}"
      end
      song << ".\n"
      song << "\n" if i < GIFTS.length - 1
    end
    song
  end
end