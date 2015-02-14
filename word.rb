require_relative 'ruby_dictionary'

# puts DICTIONARY['BLOOD']
# puts DICTIONARY['MUD']

class Word
  attr_reader :phonetic, :word_str
  def initialize(word_str)
    @word_str = word_str
    @phonetic = DICTIONARY[word_str.upcase]
    # @rhymed = args.fetch(:rhymed, false)
    # @rhymed_words = []
  end

  def compare(word)
    perfect_rhyme == word.perfect_rhyme
  end

  # def split
  #   phonetic.split(" ")
  # end

  def perfect_rhyme
    m = /[AEIOU]/.match(phonetic)
    m[0] + m.post_match if m
  end
end

# new_word = Word.new(word:'dog')
# p new_word.phonetic

### parse through word find each vowel > test letters after vowel to see fi remaining letters matc

