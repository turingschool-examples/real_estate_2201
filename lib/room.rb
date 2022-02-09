class Room
  attr_reader :category, :width, :length
  def initialize(category, width, length)
    @category = category
    @width = width
    @length = length
    @is_painted = false
  end

  def area
    length.to_i * width
  end

  def is_painted?
    @is_painted
  end

  def paint
    @is_painted = true
  end
end
