class Room
  attr_reader :category, :area
  def initialize (category, length, width) #it's length and width, width as a string!
    @category = category
    @area = nil
    @repainted = false
    @length = length
    @width = width.to_i
  end 
end
