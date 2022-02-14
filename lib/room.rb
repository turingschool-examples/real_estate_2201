require 'pry'
require 'rspec'

class Room
  attr_reader :category, :length, :width, :is_painted
  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @is_painted = false
  end

  def area
    width_integer = width.to_i
    return width_integer * length
  end

  def is_painted?
    @is_painted
  end

   def paint
     @is_painted = true 
   end


end
