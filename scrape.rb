require 'nokogiri'
require 'open-uri'

module Scraper
	def self.fetch(url)
		response = Nokogiri::HTML(open(url))
		title = response.css('.text_title').inner_text.strip
		author = response.css('.text_artist').inner_text.strip
		content = response.css('.lyrics > p').inner_text
		parsed_content = content.split("\n").reject {|el| el.include? "["}.reject(&:empty?)
		{title: title, author: author, lines: parsed_content}
	end
end