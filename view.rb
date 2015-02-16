module UserView
  def self.print_greeting
    puts "\n                      ######  Welcome to SeusScore  #######      "
    puts "                   Rate any song or poem by its rhymes be given a SeusScore  "
    puts "                     --Lookout for rhyming words and phrases--    \n\n"
    end

  def self.output(work)
    puts "\n#{work.to_s}: \n"
    puts "SeusScore: #{work.seuss_score}"
  end

  def self.input_type
    puts "Please make a selection from the options below:\n"
    puts "1 - Generate SeussScore for a poem or song from genius.com"
    puts "2 - Generate SeussScore for a poem or song from a local file"
  end

  def self.author_prompt
    puts "Enter the band, artist or author name:"
  end

  def self.title_prompt
    puts "Enter the title of the song or poem:"
  end

  def self.invalid
    puts "Invalid input, please try again."
  end
end
