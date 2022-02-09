class Room
  attr_reader :category, :length, :width
  def initialize(category,length,width)

    @category = category
    @length = length
    @width = (width).to_i
    @area = 0
    @painted = false

  end

  def category
    return @category
  end

  def area
    @area = @length * @width
  end

  def is_painted?
    return @painted
  end

  def paint
    @painted = true
  end


end
