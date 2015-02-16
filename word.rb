require_relative 'ruby_dictionary'

class Word
  attr_reader :phonetic, :word_str
  attr_accessor :rhymed
  def initialize(word_str)
    @word_str = word_str
    @phonetic = DICTIONARY[word_str.upcase]
    @rhymed = false
    # @rhymed_words = []
  end

  def compare(word)
    if perfect_rhyme == word.perfect_rhyme
      rhymed, word.rhymed = true, true
    end
    rhymed
  end

  def perfect_rhyme
    m = /[AEIOU]/.match(phonetic)
    m[0] + m.post_match if m
  end

  def rhymed_to_s

    @rhymed_word_collection << @rhymed_words
  end
end