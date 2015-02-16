require_relative 'ruby_dictionary'

class Work
  attr_reader :lines, :rhymed_word_collection, :seuss_score
  def initialize(args)
    @title = args.fetch(:title)
    @author = args.fetch(:author)
    @lines_str = args.fetch(:lines)
    @lines = args.fetch(:lines).map { |line| Line.new(line)}
    @rhymed_word_collection = []
    find_rhymes
    calc_score
  end

  def calc_score
    rhymed_word_count = 0
    total_word_count = 0
    lines.each do |line|
      total_word_count += line.words.length
      rhymed_word_count += line.words.count { |word| word.rhymed == true }
    end

    rhymed_word_count / total_word_count
  end

  def find_rhymes
    comp_cuplets
  end

  def comp_cuplets
    line_a = lines[0]
    i = 1
    while i < lines.length do
      wrd1 = line_a.words.last
      wrd2 = lines[i].words.last
      if wrd1.compare(wrd2)
        @rhymed_word_collection << [wrd1, wrd2]
      end
      line_a = lines[i]
      i += 1
    end
  end

  def comp_abab_scheme

  end

  def to_s
    output_str = "#{title}\n#{author}\n"
    lines.map { |line| line.description }.join("\n")
  end
end


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


class Word
  attr_reader :phonetic, :word_str
  attr_accessor :rhymed
  def initialize(word_str)
    @word_str = word_str
    @phonetic = DICTIONARY[word_str.upcase]
    @rhymed = false
    # @rhymed_words = []
  end

  def compare(word)
    if perfect_rhyme == word.perfect_rhyme
      rhymed, word.rhymed = true, true
    end
    rhymed
  end

  def perfect_rhyme
    m = /[AEIOU]/.match(phonetic)
    m[0] + m.post_match if m
  end

  def rhymed_to_s

    @rhymed_word_collection << @rhymed_words
  end
end