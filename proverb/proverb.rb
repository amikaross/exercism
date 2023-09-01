class Proverb
  def initialize(*args)
    if args[-1].class == Hash
      @qualifier = args[-1][:qualifier]
      @args = args[0..-2]
    else
      @qualifier = nil
      @args = args
    end
  end

  def to_s
    result = ""
    @args.each_with_index do |word, index|
      if index == @args.length - 1
        @qualifier ? final = "#{@qualifier} #{@args[0]}" : final = @args[0]
        result << "And all for the want of a #{final}."
      else
        result << "For want of a #{word} the #{@args[index + 1]} was lost.\n"
      end
    end
    result
  end
end