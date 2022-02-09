require 'pry'
class Room
attr_reader :category, :length, :width, :painted
  def initialize(category, length, width)
    @category = category
    @width = width
    @length = length
    @painted = false
  end

  def area
    return width.to_i * length
  end

  def is_painted?
    return painted
  end

  def paint
    @painted = true
  end
end
