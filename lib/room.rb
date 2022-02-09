class Room
  attr_reader :category, :length, :width
  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
  end

  def area
    @length * @width.to_i
  end

  def is_painted?
    false
  end

# I can't figure this out!! I don't see 'painted = false' as an instance variable in the interaction pattern, and I don't know how to make a method that changes the value of another method...let me know!
  def paint
    self.is_painted? ==! true
  end

end
