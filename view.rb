
module UserView
  def self.print_greeting
    puts ""
    puts "                      ######  Welcome to SeusScore  #######      "
    puts "                   Watch Any Dr. Seuss Poem be given a SeusScore  "
    puts "                     --Lookout for rhyming words and phrases--    "
    puts ""
    puts "                              Title: #{work_title}" #NEEDS WORKS TITLE
    end

  def self.output
        puts ""
        puts "#{work}: "     #NEEDS CONTENT OF WORK BEING PARSED VAR NAME
        puts ""
        puts "           SeusScore: #{}{seus_score} " #NEEDS CALCULATED SEUSS SCORE VAR NAME
  end
end

UserView.print_greeting
UserView.output
