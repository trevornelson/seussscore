# require_relative 'view'
require_relative 'scrape'

module Controller
	def rap_genius
		# display "input artist or author name"
		author = gets.chomp.capitalize
		#display "input artist or author name"
		title = gets.chomp.capitalize
		url = "http://genius.com/#{author}-#{title.downcase.gsub(' ','-')}-lyrics"
		Scrape.run(author: author, title: title, url: url)
	end

end
