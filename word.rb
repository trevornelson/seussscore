class Word
    def initialize args
      @letters = [] #WORD STRING PARSED
      @word_str = args.fetch(:word)
      @letter_count = args.fetch(:count)
      @rhymed = args.fetch(:rhymed, false)
      @rhymed_words = args.fetch(:rhymed_word, [])
      @rhymed_word_collection = []
    end
#COMPARING ALGORITHM
  def compare(word)

  end
###CREATE Word OBJ AS STRING
  def word_str

  end
##HOLDS RHYMED WORDS AS PAIR PUTS TO VIEW
  def rhymed_to_s

    @rhymed_word_collection << @rhymed_words
  end
end


### parse through word find each vowel > test letters after vowel to see fi remaining letters match
#
