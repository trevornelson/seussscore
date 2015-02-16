require 'csv'
require_relative 'line'

module Parse
  def self.dictionary(file)
    dictionary_hash = {}
    CSV.foreach(file, headers: true, header_converters: :symbol, col_sep: "  ") do |row|
      dictionary_hash[row[:word]] = row[:pronunciation]
    end
    dictionary_hash
  end

  def self.work(file)
    # project = Work.new()
    lines = []
    f = File.open(file, "r")
    f.readlines.each do |row|
      filtered_line = row.chomp.gsub(/-+/, ' ').gsub(/[!?'",$&:;]/,'')
      lines << Line.new(filtered_line)
    # project.lines << line_obj
    end
    # p project.lines
    5432q1lineslines
  end

  # def self.filter_symbols(file)
  #   file.gsub
  # end
end

# Parse.work('drseuss.txt')

