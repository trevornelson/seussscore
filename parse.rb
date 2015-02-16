module Parse
  def self.work(file)
    lines = []
    f = File.open(file, "r")
    f.readlines.each do |row|
      filtered_line = row.chomp.gsub(/-+/, ' ').gsub(/[!?'",$&:;]/,'')
      lines << filtered_line
    end
    lines
  end
end