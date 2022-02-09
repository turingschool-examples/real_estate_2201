class Room
  attr_reader :category, :length, :width
  def initialize(category, length, width)
    @category = category
    @width = width
    @length = length
  end

  def area
    @length * @width.to_i
  end

  def is_painted?
    return false
  end

  def paint
    @is_painted == true
  end
end
