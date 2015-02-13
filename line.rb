class Line
  def initialize (args = {})
    @description = args.fetch(:description, nil)
  end
end
