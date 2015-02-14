require_relative 'line'
require_relative 'parse'
require_relative 'work'

module UserView
  def self.print_greeting(title)
    puts ""
    puts "                      ######  Welcome to SeusScore  #######      "
    puts "                       Watch Any Poem be given a SeusScore  "
    puts "                     --Lookout for rhyming words and phrases--    "
    puts ""
    puts "                              Author: " + title #NEEDS WORKS TITLE
    end

  def self.output(work)
        puts ""
              work.each do |line|
                puts line.description
              end     #NEEDS CONTENT OF WORK BEING PARSED VAR NAME
        puts ""
        puts "           SeusScore: " SeusScore #NEEDS CALCULATED SEUSS SCORE VAR NAME
  end
end