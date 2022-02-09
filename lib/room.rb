class Room
  attr_reader :category,
              :length,
              :width

  def initialize (category, length, width)
    @category = category
    @length = length
    @width = width
  end

  def area
    area = @length * @width.to_i
  end

  @category.is_painted? == false

  def paint
    @room = true
  end

end
