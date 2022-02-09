require 'pry'
class Room
  attr_reader :category, :length, :width
  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
  end

  def area
    return @length * @width.to_i
  end
end
