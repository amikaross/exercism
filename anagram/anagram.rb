class Anagram
  def initialize(word)
    @word = word.downcase
    word_chars = word.downcase.chars
    @word_map = word_chars.each_with_object({}) { |char, map| map[char] ? map[char] += 1 : map[char] = 1 }
  end

  def match(word_list)
    word_list.each_with_object([]) do |word, anagrams|
      anagrams << word if is_anagram?(word.downcase.chars) && @word != word.downcase
    end
  end

  def is_anagram?(word_chars)
    anagram_map = word_chars.each_with_object({}) { |char, map| map[char] ? map[char] += 1 : map[char] = 1 }
    anagram_map == @word_map
  end
end