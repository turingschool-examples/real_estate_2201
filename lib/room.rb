class Room
  attr_reader :category, :width, :length
  def initialize(category, width, length)
    @category = category
    @width = width
    @length = length
  end

  def area
    length.to_i * width
  end

  def is_painted?
    false
  end
end
