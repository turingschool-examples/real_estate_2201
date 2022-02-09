class Room
  attr_reader :category, :length, :width

  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
  end

  def area
    @length * @width.to_i
  end

  @@coats_of_paint = 0

  def paint
    @@coats_of_paint += 1
  end

  def is_painted?
    if @@coats_of_paint == 0
      false
    else
      true
    end
  end
end
