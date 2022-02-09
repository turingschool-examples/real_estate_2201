require "pry"

class Room 
  attr_accessor :category, :length, :width, :painted
  
  
  def initialize(category, length, width)
    @category = category
    @length = length 
    @width = width
    @painted = false
  end
  
  
  def area
    (@length.to_i) * (@width.to_i)
  end 
  
  
  def paint 
    @painted = true
  end 
  
 
  
  
end
