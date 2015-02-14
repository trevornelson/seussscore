# require_relative 'parse'
require_relative 'word'

class Line
  attr_reader :description, :words
  def initialize(args = {})
    @description = args.fetch(:description, nil)
    @words = []
    word_creator
  end

  def word_creator
    description.split(" ").each do |word|
      @words << Word.new(word)
    end
  end
end
