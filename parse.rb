require 'csv'
require_relative 'line'

#require 'pry'

module Parse
  def self.dictionary(file)
    dictionary_hash = {}
    CSV.foreach(file, headers: true, header_converters: :symbol, col_sep: "  ") do |row|
      dictionary_hash[row[:word]] = row[:pronunciation]
    end
    dictionary_hash
  end

  def self.work(file)
    #project = Work.new()
    lines = []
    CSV.foreach(file, headers: true, header_converters: :symbol) do |row|
      #binding.pry
      lines << Line.new(row)
     #project.lines << line_obj
    end
    #p project.lines
    lines
  end
end
