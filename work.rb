require_relative 'parse'
require 'pry'

class Work
  attr_reader :lines, :rhymed_word_collection
  def initialize(file)
    @lines = Parse.work(file)
    @hash_value = work_hash(lines[0])
    # @description = args.fetch(:description, nil)
    # @title =
    # @seuss_score =
    @rhymed_word_collection = [] #for suessiness measure below
  end

  def seuss_score
   # In order to account for lines that have multiple rhyming words in them, it might be better to do the total number of rhymed words divided by the total number of words in the
   # entire work. Rhymed_word_collection will be an array of the sets of words that rhymed in a work, so there'll be a lot of duplication in it. Each word object has a @rhymed instance
   # variable that's either true or false, so it'll probably be the easiest to iterate through the lines, then iterate through the words in each line and count the number of word objects
   # that have #rhymed == true.
   "%" + @rhymed_word_collection.length/ @line.length
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

  # def to_csv
  #   "#{@hash_value},#{title},#{@seuss_score},#{rhymed_word_collection.join(",").join(",")}"
  # end

  private

  def work_hash(line_obj)
    line_obj.description.hash
  end
end
