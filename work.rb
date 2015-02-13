class Work
  attr_accessor :lines
  def initialize (args = {})
    @lines = []
    @description = args.fetch(:description, nil)
  end

  def seuss_score
   "%" + @rhymed_word_collection.length/ @line.length
  end
end
