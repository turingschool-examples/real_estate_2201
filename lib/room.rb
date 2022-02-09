class Room

  def initialize(room_name, room_length, room_width)
    @room_name = room_name
    @room_length = room_length
    @room_width = room_width
  end

  def category
    @room_name
  end
end
