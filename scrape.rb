require 'nokogiri'
require 'open-uri'

module Scraper
	def fetch_page(url)
		response = Nokogiri::HTML(open(url))

	end

	def parse_lyrics_page

	end

end