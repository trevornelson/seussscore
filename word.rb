class Word
    def initialize args
      @letters = [] #WORD STRING PARSED
      @word_str = args.fetch(:word)
      @letter_count = args.fetch(:count)
      @rhymed = args.fetch(:rhymed, false)
      @rhymed_word = args.fetch(:rhymed_word, [])
    end
#LAST WORD COMPARING ALGORITHM
  def compare(word)

  end
###CREATE Word OBJ AS STRING
  def word_str

  end
##HOLDS RHYMED WORDS PUTS TO VIEW
  def rhymed_to_s

  end
end


### parse through word find each vowel > test letters after vowel to see fi remaining letters match
#
