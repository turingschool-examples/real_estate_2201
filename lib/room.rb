class Room
  attr_reader :category, :length, :width, :is_painted
  def initialize (category, length, width, is_painted = false)
    @width = width
    @length = length
    @category = category
    @is_painted = is_painted
  end

  def area
    @length * @width.to_i
  end

  def paint
    if @is_painted == false
      @is_painted = true
    end
  end

  def is_painted?
    is_painted
  end
end
