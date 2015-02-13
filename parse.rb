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


# p dict['CAMEL']
# p dict['MAMMAL']
