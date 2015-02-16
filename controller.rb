require_relative 'view'
require_relative 'scrape'
require_relative 'models'

module Controller
	def self.run!
		UserView.print_greeting
		UserView.input_type
		case gets.chomp
		when "1" then self.rap_genius
		when "2" then self.file
		else
			UserView.invalid
			self.run!
		end
	end

	def self.work_details
		UserView.author_prompt
		author = gets.chomp.capitalize
		UserView.title_prompt
		title = gets.chomp.capitalize
		[author, title]
	end

	def self.rap_genius
		author, title = self.work_details
		url = "http://genius.com/#{author.gsub(' ','-')}-#{title.downcase.gsub(' ','-')}-lyrics"
		work = Work.new(Scraper.fetch(url))
		UserView.output(work)
	end

	def self.file
		author, title = self.work_details
		UserView.file_prompt
		filename = gets.chomp
		work = Work.new(author: author, title: title, lines: Parse.work(filename))
		UserView.output(work)
	end

end

Controller.run!
