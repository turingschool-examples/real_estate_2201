class Room

  def initialize(room_name, room_length, room_width)
    @room_name = room_name
    @room_length = room_length
    @room_width = room_width
    @is_painted = false
  end

  def category
    @room_name
  end

  def area
    room_area = @room_width.to_i * @room_length
    return room_area
  end

  def is_painted?
   @is_painted
  end

  def paint
    @is_painted = true
  end
end
