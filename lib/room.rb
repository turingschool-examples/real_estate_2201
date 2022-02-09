class Room
  attr_reader :type, :width, :height, :paint
  def initialize(type, width, height)
    @type = type
    @width = width
    @height = height
  end
  def category
    @type
  end
  def area
    @width * @height.to_i
  end

  def is_painted?
    if @room == :paint
      true
    else
      false
    end
  end
  def paint
    @room = :paint
  end
end
