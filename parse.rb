require 'csv'
# require 'pry'

module Parse
  def self.dictionary(file)
    dictionary_hash = {}
    CSV.foreach(file, headers: true, header_converters: :symbol, col_sep: "  ") do |row|
      dictionary_hash[row[:word]] = row[:pronunciation]
    end
    dictionary_hash
  end
end

dict = Parse.dictionary('dictionary.txt')

File.open("ruby_dictionary.rb", "w") do | f |
  f.puts dict
end


# p dict['CAMEL']
# p dict['MAMMAL']
