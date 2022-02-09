class Room
  attr_reader :category, :length, :height

  def initialize(category, length, height)
    @category = category
    @length = length
    @height = height
  end

end
