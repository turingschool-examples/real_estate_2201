require 'pry'
class Room
  attr_reader :category, :length, :width, :paint_room
  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @paint_room = "none"
  end

  def area
    area = @length.to_i * @width.to_i
  end


  def paint
    @paint_room = "done"
  end
# binding.pry
  def is_painted?
    if @paint_room == "none"
      return false
    elsif @paint_room == "done"
     return true
   end
  end

end
