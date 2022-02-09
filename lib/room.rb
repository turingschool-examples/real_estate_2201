class Room

attr_reader :category, :length, :width, :is_painted

def initialize(category, length, width )
  @category = category
  @length = length
  @width = width
  @is_painted = false
  @room_is_painted = 0
end

  def area
    @length * @width.to_i
  end

  def is_painted?
    @is_painted
  end

  def paint
    @room_is_painted += 1
    if @room_is_painted == 1
      @is_painted = true
    end
  end 


end
