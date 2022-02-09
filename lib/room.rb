class Room
  attr_reader :category, :length, :width, :paint
  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @paint = false
  end

  def area
    @length * @width.to_i
  end

  def paint
    @paint = true
  end

  def is_painted?
    if @paint == true
      return true
    else
      return false
    end


  end

end
