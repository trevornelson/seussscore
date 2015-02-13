require 'csv'
require 'pry'
require_relative 'work.rb'
require_relative 'line.rb'
# require 'pry'

module Parse
  def self.dictionary(file)
    dictionary_hash = {}
    CSV.foreach(file, headers: true, header_converters: :symbol, col_sep: "  ") do |row|
      dictionary_hash[row[:word]] = row[:pronunciation]
    end
    dictionary_hash
  end

  def self.work(file)
    @project = Work.new
    CSV.foreach(file, headers: true, header_converters: :symbol) do |row|
      @project.work << Line.new(row)
    end
     @project.work
  end
end

# f = File.open('abridged_dictionary.txt')
# f.gsub(//, '')

# dict = Parse.dictionary('dictionary.txt')
# puts dict['GREEN']
p Parse.work('work.txt')
