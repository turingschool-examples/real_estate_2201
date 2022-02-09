require 'pry'
class Room
  attr_reader :name, :length, :width
  def initialize(name, length, width)
    @name = name
    @length = length
    @width = width
  end
end
