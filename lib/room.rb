class Room

  attr_reader :category,
              :length,
              :width

  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @is_painted = false
  end

  def area
    @width = @width.to_i
    @length * @width
  end

  def is_painted?
    @is_painted
  end

  def paint
    @is_painted = true
  end

end
