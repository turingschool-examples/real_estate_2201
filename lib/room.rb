class Room
attr_reader :category, :length, :width, :paint

  def initialize(cat, len, wid)
    @category = cat
    @length = len
    @width = wid
    @paint = false
  end

  def area
    @length * @width.to_i
  end

  def paint
    if @paint == false
      @paint = true
    end
  end

  def is_painted
    @paint
  end

end
