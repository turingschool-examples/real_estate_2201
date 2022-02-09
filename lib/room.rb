require 'pry'
require 'rspec'
require './paint'

class Room
  attr_reader :category, :length, :width, :paint_status
  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @paint_status = []

  end

  def area
    (width.to_i) * length
  end

   def add_paint(paint)
     @paint_status << paint
   end

  def is_painted?
    if @paint_status.empty?
      return false
    else
      return true 
    end
  end
end
