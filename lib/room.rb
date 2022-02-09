require 'rspec'


class Room
attr_reader :category, :length, :width, :paints

  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @paints = false

  end

  def area
    @length * @width.to_i
  end


  def is_painted?
    if @paints == true
      return true
    else
      return false
    end
  end

  def paint
    @paints = true
  end



end
