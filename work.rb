class Work
  attr_accessor :lines
  def initialize (args = {})
    @lines = []
    @description = args.fetch(:description, nil)
  # @rhymed_word_collection = [] #for suessiness measure below
  end

  def seuss_score
   "%" + @rhymed_word_collection.length/ @line.length
  end
end
