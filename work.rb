require_relative 'parse'
require 'pry'

class Work
  attr_reader :lines, :rhymed_word_collection
  def initialize(file)
    @lines = Parse.work(file)
    # @description = args.fetch(:description, nil)
    @rhymed_word_collection = [] #for suessiness measure below
  end

  def seuss_score
   "%" + @rhymed_word_collection.length/ @line.length # This
  end

  def comp_cuplets
    line_a = lines[0]
    i = 1
    while i < lines.length do
    # for i in (1..lines.size) do
      wrd1 = line_a.words.last
      wrd2 = lines[i].words.last
      if wrd1.compare(wrd2)
        @rhymed_word_collection << [wrd1, wrd2]
        # binding.pry
      end
      line_a = lines[i]
      i += 1
    end
  end

  def comp_abab_scheme

  end
end
