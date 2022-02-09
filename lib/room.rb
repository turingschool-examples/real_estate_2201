class Room
  attr_reader :category, :area
  def initialize (category, length, width) #it's length and width, width as a string!
    @category = category
    @area = (width.to_i)*length
    @paint_status = false
    @length = length
    @width = width.to_i
  end

  def is_painted?
    @paint_status
  end

  def paint
    @paint_status = true
  end
end
