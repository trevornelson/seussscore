class Work
  attr_accessor :work
  def initialize (args = {})
    @work = []
    @description = args.fetch(:description, nil)
  end

  def seuss_score
   "%" + @rhymed_word_collection.length/ @line.length
  end
end
