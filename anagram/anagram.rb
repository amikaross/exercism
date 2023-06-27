class Anagram
  def initialize(word)
    @word = word.downcase
    @word_chars = @word.chars.sort
  end

  def match(options)
    options.select do |option|
      option_chars = option.downcase.chars.sort
      option_chars == @word_chars unless option.downcase.eql?(@word)
    end
  end
end