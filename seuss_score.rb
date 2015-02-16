require_relative 'work'


filename = "test_cases/" + ARGV[0]

work = Work.new(filename)
work.comp_cuplets


work.rhymed_word_collection.each do |a|
  puts "#{a[0].word_str} rhymed with #{a[1].word_str}"
end

