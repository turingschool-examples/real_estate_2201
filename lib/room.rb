class Room
  attr_reader :category, :length, :width
  def initialize (category, length, width)
    @width = width
    @length = length
    @category = category
  end
end
