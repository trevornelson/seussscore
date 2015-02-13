# require_relative 'parse'
# require_relative 'word'

class Line
  attr_accessor :description
  def initialize(args = {})
    @description = args.fetch(:description, nil)
    @words = []
  end

  def word_creator
    description.split(" ").each do |word|
      @words << Word.new(word)
    end
  end
end
