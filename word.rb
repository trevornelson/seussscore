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

  def compare(word)
    find_vowel == word.find_vowel
  end

  # def split
  #   phonetic.split(" ")
  # end

  def find_vowel
    m = /[AEIOU]/.match(phonetic)
    m[0] + m.post_match
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
# w1 = Word.new(word: "blood")
# w2 = Word.new(word: "blue")
# p w1.compare(w2) == false
# w1 = Word.new(word: "willow")
# w2 = Word.new(word: "pillow")
# p w1.compare(w2) == false
# w1 = Word.new(word: "red")
# w2 = Word.new(word: "dead")
# p w1.compare(w2) == true
# w1 = Word.new(word: "president")
# w2 = Word.new(word: "residence")
# p w1.compare(w2) == false
# w1 = Word.new(word: "apple")
# w2 = Word.new(word: "gradual")
# p w1.compare(w2) == false

