require_relative 'ruby_dictionary'

# puts DICTIONARY['BLOOD']
# puts DICTIONARY['MUD']

class Word
  attr_reader :phonetic, :word_str
  def initialize(args)
    @word_str = args.fetch(:word, nil)
    @phonetic = DICTIONARY[word_str.upcase]
    # @rhymed = args.fetch(:rhymed, false)
    # @rhymed_words = []
  end

#COMPARING ALGORITHM
  def compare(word)

  end

##HOLDS RHYMED WORDS AS PAIR PUTS TO VIEW
  def rhymed_to_s

    @rhymed_word_collection << @rhymed_words
  end
end

# new_word = Word.new(word:'dog')
# p new_word.phonetic

### parse through word find each vowel > test letters after vowel to see fi remaining letters match
#
