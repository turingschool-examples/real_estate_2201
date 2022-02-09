class Room
  attr_reader :category, :area
  def initialize (category, area, number) #not sure what number does
    @category = category
    @area = area
    @repainted = false

  end 
end
