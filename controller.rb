 require_relative 'view'
 require_relative 'work'
 require_relative 'word'
 require_relative 'line'
 require_relative 'parse'


module Controller
	def self.file_runner
		$title = ARGV[0]
		$work = Parse.work('blake.txt')
#		Parse.dictionary('ruby_dictionary.rb')
		case $title
			when $title == 'DrSeuss'
				Parse.work('drseuss.txt')
				p "test"
				Line.word_creator
				Word.compare(word)
				Word.perfect_rhyme
				Word.rhymed_to_s
			when $title == 'Blake'
				Parse.work('blake.txt')
				Line.word_creator
				Word.compare(word)
				Word.perfect_rhyme
				Word.rhymed_to_s
			when $title == 'Chaucer'
				Parse.work('chaucer.txt')
				Line.word_creator
				Word.compare(word)
				Word.perfect_rhyme
				Word.rhymed_to_s
			when $title == 'Wordsworth'
				Parse.work('wordsworth.txt')
				Line.word_creator
				Word.compare(word)
				Word.perfect_rhyme
				Word.rhymed_to_s
			end
		end
end
Controller.file_runner
UserView.print_greeting($title)
UserView.output($work)