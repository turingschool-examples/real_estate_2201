class Room
  attr_reader :category, :length, :width, :has_paint
    
  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @has_paint = false
  end

  def area
    return length * width.to_i
  end

  def is_painted?
    return has_paint
  end

  def paint
    @has_paint = true
  end

    
end