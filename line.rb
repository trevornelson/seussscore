require_relative 'word'

class Line
  attr_reader :description, :words
  def initialize(line_str)
    @description = line_str
    @words = []
    word_creator
  end

  def word_creator
    description.split(" ").each do |word|
      @words << Word.new(word)
    end
  end
end
